# Linear Programming
# Brandon Serna

install.packages('lpSolveAPI')

library('lpSolveAPI')


# Parameters 

# 2 crops, model req 0 rows and 2 columns
lprec <- make.lp(0,2)

# Maximization problem 
lp.control(lprec, sense="max")


# Set Objective function and add constraints 

# Wheat - 1hr labor yeilds $500, 2hrs - $300 for 1 acre 
set.objfn(lprec, c(1*500, 2*300))

# Cost per seed - $200 / acre of wheat and $100 / acre of rye w/ budget of $1,200
add.constraint(lprec, c(200, 100), "<=", 1200)

# 1 hr labor / acre wheat. 2 hrs / acre rye max 10hrs 
add.constraint(lprec, c(1,2), "<=", 12)

# 10 avail acres, min 7 acres
add.constraint(lprec, c(1,1), "<=", 10)


lprec

solve(lprec)

get.objective(lprec)
get.variables(lprec)

# Farmer needs to plant 4 acres of each crop for max profit of $4,400