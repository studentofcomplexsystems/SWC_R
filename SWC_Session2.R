#Software Carpentry for R - Session 2

#Install new package ggplot2
install.packages("ggplot2")
install.packages("dplyr")

#Information about the package
vignette("dplyr")

#create a dataframe
my_contact <- data.frame(name=c("dad", "mum", "Ollie", "Tara"), age=c(58, 52, 35, 33), relationship=c("family", "family", "friend", "friend"))

#view my dataframe
my_contact

#explore the structure of the object/dataframe
str(my_contact)

#convert the name vector from factor to character
as.character(my_contact$name)
my_contact$name <- as.character(my_contact$name)

#check name vector has been changed to character
str(my_contact)

#add new vector 
postcode <- c(4000, 4600, 4200, 4200)
cbind(my_contact, postcode)
my_contact

#add new row
newPerson <- list("Mel", 35, "friend", 4000)
rbind(my_contact, newPerson)
my_contact

#to remove NAs
na.omit()

#to access elements in list use [index]
#to access elements in dataframe use [rowIndex, colIndex]

#remove row number 4 onwards
my_contact[-4,]
my_contact, my_contact <- [-4,]
my_contact

my_contact[my_contact$name[1],]
nrow(my_contact)

#recreate the dataframe
my_contact <- data.frame(name=c("dad", "mum", "Ollie", "Tara"), age=c(58, 52, 35, 33), relationship=c("family", "family", "friend", "friend"))

#recreate postcode
postcode <- c(4000, 4600, 4200, 4200)
cbind(my_contact, postcode)
newPerson <- list("Mel", 35, "friend", 4000)
my_contact$name <- as.character(my_contact$name))

#check the number of cols
nrow(my_contact)
ncol(my_contact)

