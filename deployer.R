#dplyr - mtcars
#Install them
#install.package(c('dplyr','tidyverse'))
library(dplyr)
#library(tidyverse)

?mtcars
head(mtcars)
#Filter----


filter(mtcars, cyl <6, vs ==1)
filter(mtcars, row_number() == 1L) #Integer ??
filter(mtcars, row_number() == n()) #Last row


#mutate
mutate(mtcars, displ_l = disp /61.0237) #keeps other col
iris



