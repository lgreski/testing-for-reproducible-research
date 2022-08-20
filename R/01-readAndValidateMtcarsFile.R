#
# 01-readAndValidateMtcarsFile.R

library(assertive)

# confirm file exists
assert_all_are_readable_files("./data/mtcars.csv")

df <- read.csv("./data/mtcars.csv",header = TRUE)

# test data vs. assertions
assert_is_data.frame(df)
assert_engine(is_true,nrow(df) == 32)
assert_engine(is_true,ncol(df) == 12)
assert_engine(is_true,df[17,1] == "Chrysler Imperial")
assert_engine(is_true,sum(df$wt) == 102.952)
assert_engine(is_true,sum(df$am) == 13)
assert_engine(is_true,max(df$disp) == 472)
assert_engine(is_true,min(df$hp) == 52)

# include a few false assertions to generate warning messages 
assert_engine(is_true,nrow(df) == 33,severity = "warning")
assert_engine(is_true,ncol(df) == 11,severity = "warning")
assert_engine(is_true,df[17,1] == "BMW 335d",severity = "warning")
