library(testthat)

#1.
expect_length(1, 1)
expect_length(1:10, 10)
#2.
expect_length(1:10, 1)
