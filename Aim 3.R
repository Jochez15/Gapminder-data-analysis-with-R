# 3. check the relationship between GDP per cap and Population. 

# Working with the 21st century data
ggplot(gapminder_21_cen, aes(x = pop, y = gdpPercap)) +
  geom_point()

#using the log scale for a better display
ggplot(gapminder_21_cen, aes(x = pop, y = gdpPercap)) +
  geom_point() + scale_x_log10()

"From our plot, we can conclude that there is no relationship between the two 
variable."
