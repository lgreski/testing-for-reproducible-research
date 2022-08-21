#
# 04-verifyDiskSpace.R

library(dplyr)
 
# MacOS version
read.fwf(textConnection(system("df -H",intern = TRUE)),
         col.names = c("filesystem","size","used","available","capacity",
                       "iused","ifree","pct_iused","mountedOn"),
         widths=c(62,4,7,7,7,8,12,6,35),skip = 1) %>% 
     filter(!grepl("TimeMachine",filesystem)) -> diskUsage

View(diskUsage)

