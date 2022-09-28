# 1. Find the population growth overtime for different continents.

gapminderTable <- gapminder    #gapminder table

##gapminder data for 21st Century.
gapminder_21_cen <- gapminderTable %>% filter(year >= 2000)

##using ggplot to check trend in growth of population for the different continents
gapminderTable %>% group_by(year, continent) %>%
  summarize(pop = sum(pop), continent) %>%
  ggplot(aes(x = year,y = pop)) + geom_line() +
  facet_wrap(~ continent)

"According to the graphs, Oceanic have almost a constant population over the
period of 60 years. While Asia have the highest poulation growth rate, 
followed by Africa."
