# Linear Programming Exercise 2
# Brandon Serna

# Gold processor w/ 2 sources A and B 
# needs <= 3 tons of ore / day
# A $20 /ton
# B $10 / ton 

library("lpSolveAPI")

# 2 sources, 0 rows and 2 columns
lprec <- make.lp(0, 2)

lp.control(lprec, sense = "max")

# Objective function

# yeilds 2oz/ton and 3oz/ton
set.objfn(lprec, c(2,3))

add.constraint(lprec, c(20, 10), "<=", 80)

add.constraint(lprec, c(2, -1), ">=", 0)

lprec

solve(lprec)
get.objective(lprec)

get.variables(lprec)
