def camel_to_snake(name):
    # Convert CamelCase or camelCase to snake_case
    s1 = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', name)
    s2 = re.sub('([a-z0-9])([A-Z])', r'\1_\2', s1)
    s3 = s2.lower()
    # Replace multiple underscores with a single underscore
    s3 = re.sub(r'_+', '_', s3)
    # Remove leading/trailing underscores
    s3 = s3.strip('_')
    return s3


import os
import re

# Map C/C++ types to ROS2 .msg types
C_TO_ROS_TYPE = {
    'double': 'float64',
    'float': 'float32',
    'int': 'int32',
    'int32_t': 'int32',
    'int64_t': 'int64',
    'uint32_t': 'uint32',
    'uint64_t': 'uint64',
    'uint8_t': 'uint8',
    'int8_t': 'int8',
    'char': 'int8',
    'bool': 'bool',
}

def parse_macro_definitions(*macro_paths):
    """Parse macro definitions from one or more .h files and return a dict."""
    macros = {}
    for macro_path in macro_paths:
        if not os.path.isfile(macro_path):
            continue
        with open(macro_path, 'r') as f:
            for line in f:
                m = re.match(r'#define\s+(\w+)\s+([\w\(\)\+\-\*/]+)', line)
                if m:
                    name, value = m.groups()
                    # Try to evaluate value if possible
                    try:
                        value_eval = str(eval(value, {}, {}))
                    except Exception:
                        value_eval = value
                    macros[name] = value_eval
    return macros

def parse_struct_fields(struct_body):
    # Remove all // and //!< comments
    struct_body = re.sub(r'//.*', '', struct_body)
    struct_body = re.sub(r'/\*!<.*?\*/', '', struct_body, flags=re.DOTALL)
    struct_body = re.sub(r'//!<.*', '', struct_body)
    fields = []
    macros_used = set()
    # Match lines like: type name; or type name[array];
    field_regex = re.compile(r'^(\w+)\s+(\w+)(\[(\w+)\])?\s*;')
    for line in struct_body.splitlines():
        line = line.strip()
        if not line:
            continue
        m = field_regex.match(line)
        if not m:
            continue
        c_type, name, _, arrlen = m.groups()
        # Skip enums and unknown types
        if c_type == 'enum' or c_type not in C_TO_ROS_TYPE:
            continue
        ros_type = C_TO_ROS_TYPE.get(c_type, c_type)
        if arrlen:
            fields.append((ros_type, name, arrlen))
            macros_used.add(arrlen)
        else:
            fields.append((ros_type, name, None))
    return fields, macros_used

def convert_header_to_msg(header_path, out_dir, global_macros):
    with open(header_path, 'r') as f:
        content = f.read()
    # Parse local macros from this header
    local_macros = parse_macro_definitions(header_path)
    # Merge: local macros override global macros
    macros = dict(global_macros)
    macros.update(local_macros)
    # Find struct
    m = re.search(r'typedef struct\s*{([^}]*)}\s*(\w+);', content, re.DOTALL)
    if not m:
        return False
    struct_body, struct_name = m.groups()
    fields, macros_used = parse_struct_fields(struct_body)
    if not fields:
        return False
    msg_path = os.path.join(out_dir, struct_name + '.msg')
    macro_lines = []
    for macro in sorted(macros_used):
        if macro in macros:
            # Guess type from value (int or float)
            val = macros[macro]
            try:
                int(val)
                macro_type = 'uint8' if int(val) >= 0 and int(val) < 256 else 'int32'
            except Exception:
                macro_type = 'int32'
            macro_lines.append(f"{macro_type} {macro} = {val}")
    field_lines = []
    used_names = set()
    for ros_type, name, arrlen in fields:
        name_snake = camel_to_snake(name)
        if name_snake in used_names:
            continue  # skip duplicate field names
        used_names.add(name_snake)
        if arrlen:
            arrlen_literal = macros.get(arrlen, arrlen)
            try:
                arrlen_literal_int = int(arrlen_literal)
                arrlen_literal = str(arrlen_literal_int)
            except Exception:
                pass
            field_lines.append(f"{ros_type}[{arrlen_literal}] {name_snake}")
        else:
            field_lines.append(f"{ros_type} {name_snake}")
    with open(msg_path, 'w') as f:
        if macro_lines:
            f.write('\n'.join(macro_lines) + '\n')
        f.write('\n'.join(field_lines) + '\n')
    print(f"Converted {header_path} -> {msg_path}")
    return True


def main():
    bsk_path = os.environ.get('BSK_PATH')
    if not bsk_path:
        print('BSK_PATH environment variable not set!')
        return
    c_dir = os.path.join(bsk_path, 'src', 'architecture', 'msgPayloadDefC')
    cpp_dir = os.path.join(bsk_path, 'src', 'architecture', 'msgPayloadDefCpp')
    macro_path = os.path.join(bsk_path, 'src', 'architecture', 'utilities', 'macroDefinitions.h')
    base_dir = os.path.dirname(os.path.abspath(__file__))
    out_dir = os.path.abspath(os.path.join(base_dir, '..', 'msg'))
    os.makedirs(out_dir, exist_ok=True)
    global_macros = parse_macro_definitions(macro_path)
    for folder in [c_dir, cpp_dir]:
        if not os.path.isdir(folder):
            continue
        for fname in os.listdir(folder):
            if fname.endswith('.h'):
                header_path = os.path.join(folder, fname)
                convert_header_to_msg(header_path, out_dir, global_macros)

if __name__ == '__main__':
    main()
