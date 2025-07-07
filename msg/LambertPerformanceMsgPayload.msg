# Structure used to define extra output of the Lambert problem solution

builtin_interfaces/Time stamp
float64 x  # [-] solution for free variable (iteration variable)
int32 numiter  # [-] number of root-finder iterations to find x
float64 errx  # [-] difference in x between last and second-to-last iteration
float64 xsol2  # [-] second solution for free variable (iteration variable)
int32 numitersol2  # [-] number of root-finder iterations to find x_sol2
float64 errxsol2  # [-] difference in x_sol2 between last and second-to-last iteration
