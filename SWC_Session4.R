#Software Carpentry Session 4

#load data into R
gap_data <- read.csv("Data/gapminder-FiveYearData.csv")

#explore the data
str(gap_data)
head(gap_data)

#install the package
install.packages("ggplot2")
#load the ligrary
library("ggplot2")

#create a plot using ggplot
#1. data set
#2. coordinates for x and y axis
#3. visual representation 
ggplot(data = gap_data, mapping=aes(x=gdpPercap, y=lifeExp)) + geom_point()

#statistical modelling to log transform data
ggplot(data = gap_data, mapping=aes(x=gdpPercap, y=lifeExp)) + geom_point() + scale_x_log10()

#find relationship between data point
ggplot(data = gap_data, mapping=aes(x=gdpPercap, y=lifeExp)) + geom_point() + scale_x_log10() + geom_smooth(method = "lm")

#add colours
ggplot(data = gap_data, mapping = aes(x = year, y = lifeExp, by = country, color = continent)) + geom_line()

#load dptyr library
library("dplyr")

#select() lets you select col
year_country_gdp <- select(gap_data, year, country, gdpPercap)
head(year_country_gdp)

#this is the "pipe" %>% . It passes information/data from left side of the operator to the right side
year_country_gdp <- gap_data %>% select(year, county, gdpPercap)
head(year_country_gdp)

#filter() lets me select rows in the table
year_country_gdp_eur <- gap_data %>% filter(continent=="Europe")
head(year_country_gdp_eur)

year_country_gdp_eur <- gap_data %>% filter(continent=="Europe") %>% select(year, country, gdpPercap)
head(year_country_gdp_eur)

#summarise the data by gdpPercap
gdp_by_continent <- gap_data %>% group_by(continent) %>% summarize(mean_gdpPercap = mean(gdpPercap))
head(gdp_by_continent)

#plot the average
ggplot(gdp_by_continent, mapping = aes(x=continent, y=mean_gdpPercap, colour=continent)) + geom_point() + labs(title="Gapminder", x="Continent", y="Mean of GDP per capita")

