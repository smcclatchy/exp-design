dat <- read.csv("bodyWeights.csv") 

controlPopulation <- filter(dat, Sex == "M" & Diet == "chow") %>%  
  select(BW.21) %>% unlist

hfPopulation <- filter(dat, Sex == "M" & Diet == "hf") %>%  
  select(BW.21) %>% unlist

reject <- function(N, alpha=0.05){
  hf <- sample(hfPopulation, N) 
  control <- sample(controlPopulation, N)
  pval <- t.test(hf, control)$p.value
  pval < alpha
}

Ns <- seq(5, 50, 5)

power <- sapply(Ns, function(N){
  rejections <- replicate(B, reject(N))
  mean(rejections)
})


png("power-vs-sample-size.png")
plot(Ns, power, type="b", main="Power versus sample size")
dev.off()