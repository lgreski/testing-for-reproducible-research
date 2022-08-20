#
# 00-setup.R script

if(!dir.exists("./data")) dir.create("./data")
write.csv(mtcars,"./data/mtcars.csv")