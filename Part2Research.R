## Simple plot to visualize a correlation between tooth length and vitamin C
library(datasets)
library(ggplot2)
ggplot(data=ToothGrowth, aes(x=as.factor(dose), y=len, fill=supp)) +
    geom_bar(stat="identity",) +
    facet_grid(. ~ supp) +
    xlab("Dose in miligrams") +
    ylab("Tooth length") +
    guides(fill=guide_legend(title="Supplement type"))

## Try fitting a linear model
fit <- lm(len ~ dose + supp, data=ToothGrowth)
summary(fit)

## Confidence levels
confint(fit)