#2. check the relationship between life Expectancy and population.

#gapminder data for 2002
gapminder_2002 <- gapminderTable %>% filter(year == 2002)

#plot of lifeExp vs pop
ggplot(gapminder_2002, aes(x = lifeExp, y = pop)) + 
  geom_point()

#plot of lifeExp vs pop with enhanced log scale and color.
ggplot(gapminder_2002, aes(x = lifeExp, y = pop, color = continent)) + 
  geom_point(alpha = 0.7) +
  scale_y_log10()

"There is no solid relatipnship between life Expectancy and population"

