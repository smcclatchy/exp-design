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

N <- 30

alphas <- c(0.1,0.05,0.01,0.001,0.0001)

power <- sapply(alphas,function(alpha){
  rejections <- replicate(B, reject(N, alpha=alpha))
  mean(rejections)
})

png("power-versus-alpha.png")
plot(alphas, power, xlab="alpha", type="b", log="x", main = "Power plotted against cut-off")
dev.off()