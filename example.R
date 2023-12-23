library(ggplot2)

ggplot(mtcars, aes(x = mpg, y = hp, color = as.factor(cyl))) + geom_point()
