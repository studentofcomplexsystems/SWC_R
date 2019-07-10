#Software Carpentry Session 3

#remove objects from the environment
rm(my_contact)

#### Read data #####

#read data straight from the web
gap_data <- read.csv("https://tinyurl.com/IdoIsAwesome")

#read data from your local drive
gap_data <- read.csv(" <insert file path> ")

#explore the dataframe (table)
head(gap_data)
tail(gap_data)

#summarised view
summary(gap_data)


#### Dataframe subsetting #####
#subset dataframe
gap_data[178, 5]
gap_data[178,]

#subset a range of rows
gap_data[150:175,]

#filter by particular value
gap_africa <- subset(gap_data, continent=="Africa")
gap_africa_low <- subset(gap_data, continent=="Africa"& gdpPercap<1200)
gap_africa_asia <- subset(gap_data, continent=="Africa"| continent=="Asia")

#subset based on a content of a vector
select_countries <- c("Norway", "Australia","Israel", "France", "England", "Samoa")
select_gap <- subset(gap_data, country %in% select_countries)
summary(select_gap)

#selecting African countries using square brackets filter (to show how subset filter works behind the scenes)
gap_data$continent
gap_data$continent=="Africa"
gap_africa <- gap_data[gap_data$continent=="Africa",]


#### Control flow #####

#1. subset data from each continent
#2. save it to a distinct file
continents <- as.character(unique(gap_data$continent))

#3. loop over each continent
#a print example
for (cont in continents) {
  print(cont)
  }

#actual loop
cont <- continents[1] #for testing purposes only
for (cont in continents) {
  print(cont)
  gap_cont <- subset(gap_data, continent==cont)
  cont_filename <- paste0("Output/gap_data_", cont, 
                          ".csv")
  #export subset to a file
  write.csv(gap_africa, cont_filename)
}

