#
# 03-testTheEnvironment.R

library(assertive)

# are needed packages installed and at current version?
assert_all_are_current_packages(c("tidyverse","tidycensus","benchmarkme"))

# does machine have at least 8Gb of RAM? 
assert_engine(is_true,benchmarkme::get_ram() > 1024 * 1024 * 1024 * 8)

assert_is_r_current()

assert_is_64_bit()

