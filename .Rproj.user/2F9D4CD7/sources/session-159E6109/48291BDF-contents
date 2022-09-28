# 4. Evaluate trend of Life Expectancy over the period of time.

#checking the best summary statistics
gapminderTable %>% ggplot(aes(x = lifeExp)) + geom_density()

"we can see that the data is skewed to the left, 
which means that the mean is closer to the left that the median"

# We check for outliers that may be impacting our plot
gapminderTable %>% ggplot(aes(y = lifeExp)) + geom_boxplot()

"there are no outliers, since majority of the points fall into the 
 regions of the box, although the box has a longer lower tail, emphasizing the 
left skewness we saw in our density plot."

#Trend in life Expectancy
gapminderTable %>% group_by(year) %>%
  summarize(med_lifeExp = median(lifeExp)) %>%
  ggplot(aes(x = year, y = med_lifeExp)) + 
  geom_point() + expand_limits(y = 10)

#Trend in life Expectancy for different continents.
gapminderTable %>% group_by(year, continent) %>%
  summarize(med_lifeExp = median(lifeExp)) %>%
  ggplot(aes(x = year, y = med_lifeExp, color = continent)) +
  geom_line() +
  expand_limits(y = 30)
" The life expectancy for the different continents have been
growing consistently, with Asia having the fastest growth rate. "
