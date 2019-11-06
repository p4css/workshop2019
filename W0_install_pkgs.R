# packages for workshop 
# tidyverse is a collection of useful packages which match the dplyr coding style
# The core tidyverse includs
#       dplyr for data manipulation grammar, e.g., select(), filter(), mutate()
#       ggplot2 for visualization
#       lubridate for manipulating date and time objects, e.g., year()
#       stringr for string operations, e.g., str_sub()
#       readr for file reading, e.g., read_csv()
# jiebaR for chinese word tokenization
# rtweet is a convinient R client to access twitter data
# tidytext for processing
# igraph for network analysis and visualization
# bbplot, built by bbc team, defines publising format of R, 
# bbplot, see https://bbc.github.io/rcookbook/

pkgs <- c("tidyverse", "jiebaR", "rtweet", "tidytext", "widyr", "igraph", "devtools")

# installing packages not in the computer
pkgs <- pkgs[!(pkgs %in% installed.packages()[,"Package"])] 
if(length(pkgs)) install.packages(pkgs)

devtools::install_github('bbc/bbplot')
