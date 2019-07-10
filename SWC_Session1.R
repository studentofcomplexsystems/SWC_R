#My first R session at QUT

#To get help about a variable, to view defaults etc
?paste

#Basic stuff using scalars
12+3
#Assigning values to variables
x <- 7
y<- 13
#Doing stuff with my variables
z <- x-y

#R can include more than just numbers - it can hold text too
name <- "Jono"

#A vector is a value of multiple variables of the same time 
numbers <- c(7, 13)


numbers <- c(x, y)
#Vectors have a direction - it matters which one is first and which is second
numbers2 <- c(y, x)

#Reassigning values to a vector
numbers2 <- c(5, 18)

#
all_nums <- c(numbers, numbers2) 

#Vector creating multiple elements
all_names <- c("Jono", "Ido", "Heidi")
#Variable creating one element
inst_names <- c("Ido Heidi")

#NA means that there is something unknown; e.g. could be missing data
w <- NA
w <- c(1,NA)

#R is a vectorised language which makes it efficient

#Dividing each element of my numbers by 2 - this isn't possible in many other software packages
all_nums/2

#concatenating a string to each name
paste(all_names, "is awesome")
paste(all_names, "is awesome", sep="-")




