#
# 02-testThatWithMtcarsFile.R


df <- read.csv("./data/mtcars.csv",header = TRUE)

library(testthat)
test_that("mtcars data loaded successfully",{
     expect_equal(nrow(df),32)
     expect_equal(ncol(df),12)
     expect_equal(df[17,1],"Chrysler Imperial")
     expect_equal(sum(df$wt),102.952)
     expect_equal(sum(df$am),13)
})