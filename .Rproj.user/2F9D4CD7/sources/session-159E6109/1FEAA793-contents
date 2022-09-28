# 5. Evaluate trend in GDP Per Cap growth over time

#checking the best summary statistics
gapminderTable %>% ggplot(aes(x = gdpPercap)) + geom_density()

"we can see that the data is skewed to the right, 
which means that the mean is closer to the right that the median"

# since it is skewed, the median will be a better summary statistics

#Trend in GDP Per Cap
gapminderTable %>% group_by(year) %>%
  summarize(med_gdpPercap = median(gdpPercap)) %>%
  ggplot(aes(x = year, y = med_gdpPercap)) + 
  geom_line()
"The Gdp have been growing consistently"

#Trend in GDP Per Cap for different continents.
gapminderTable %>% group_by(year, continent) %>%
  summarize(med_gdpPercap = median(gdpPercap)) %>%
  ggplot(aes(x = year, y = med_gdpPercap, color = continent)) +
  geom_point() +
  labs(title = "GDP per cap Growth for Continents", caption =
         "Source: gapminder package") +
  theme_classic() +
  theme(axis.line.y = element_line(),
        axis.ticks.y = element_line(),
        axis.text = element_text(color = "black"),
        axis.title = element_blank(),
        legend.position = "none")


"The GDP per cap is constantly rising for Europe and Oceanic,
Africa GDP per cap remains very low." 


  
