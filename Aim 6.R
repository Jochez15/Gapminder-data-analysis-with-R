"6. Make a visually sophiscated plots for countries(6) with
highest life expectancy and countries(6) with lowest life expectancy for 2002."

#getting the top 6 and bottom 6 countries according to life expectancy.
top_6 <- gapminder_2002 %>% arrange(desc(lifeExp)) %>% top_n(6)
bottom_6 <- gapminder_2002 %>% arrange(desc(lifeExp)) %>% top_n(-6)


# Row binding and selecting of countries and life expectancy.
plot_sample <- rbind(top_6, bottom_6) %>% select(country, lifeExp)


#making a line plot of the data.
ggplot(plot_sample, aes(x = lifeExp, y = country, color = lifeExp)) +
  geom_point(size = 4)


#Making the plots to be visually more attractive
plot_geom <- ggplot(plot_sample, aes(x = lifeExp, y = country, color = lifeExp)) +
  geom_point(size = 4) +
  geom_segment(aes(xend = 30, yend = country), size = 1) +
  geom_text(aes(label = round(lifeExp,1)), color = "white", size = 1.5) +
  scale_x_continuous("", expand = c(0,0), limits = c(30,90), position = "top") +
  scale_color_gradientn(colors = brewer.pal(5, "RdYlGn")[-(2:4)]) +
  labs(title = "Highest and lowest life expectancies, 2002", caption =
         "Source: gapminder package")


#calculating some other important values for the themes layer
median_lifeExp_2002 <- median(gapminder_2002$lifeExp) %>% round(1)
x_start <- median_lifeExp_2002 + 4
y_start <- 5.5
x_end <- median_lifeExp_2002
y_end <- 7.5


#Adding more formatting with theme_classic
plot_geom + theme_classic() +
  theme(axis.line.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.text = element_text(color = "black"),
        axis.title = element_blank(),
        legend.position = "none") + 
  geom_vline(xintercept = median_lifeExp_2002, color = "grey40", linetype = 3) +
  annotate(
    "text",
    x = x_start, y = y_start,
    label = "The\nglobal\nmedian",
    vjust = 1, size = 3, color = "grey40"
  ) +
  annotate(
    "curve",
    x = x_start, y = y_start,
    xend = x_end, yend = y_end,
    arrow = arrow(length = unit(0.2, "cm"), type = "closed"),
    color = "grey40"
  )

"Our final plot is a very clear plot that can be used for communicating
with a wider audience."
