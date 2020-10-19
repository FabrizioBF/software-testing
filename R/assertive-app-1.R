library(assertive)

# assert_* functions to throw errors if variables aren't in the right form

a=c(1,2,3,4,5)
b=c(1,2,3,4,-5)

assert_all_are_positive(a)

assert_all_are_positive(b)
