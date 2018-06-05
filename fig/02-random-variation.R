dat <- data.frame(sample = factor(rep(c("1","2","3"), 
                                      each=200)),
                  mass = c(rnorm(200, mean = 1, sd=1),
                           rnorm(200, mean=1, sd=1),
                           rnorm(200, mean=1, sd=1)))

png(filename = "random-variation.png")
ggplot(dat, aes(x=mass, fill=sample)) + 
  geom_density(alpha=0.3) + 
  theme(axis.text.y=element_blank(),
        axis.title.y=element_blank())
dev.off()
