dat <- read.csv("bodyWeights.csv") 

controlPopulation <- filter(dat, Sex == "M" & Diet == "chow") %>%  
  select(BW.21) %>% unlist

hfPopulation <- filter(dat, Sex == "M" & Diet == "hf") %>%  
  select(BW.21) %>% unlist

calculatePvalue <- function(N) {
  hf <- sample(hfPopulation, N) 
  control <- sample(controlPopulation, N)
  t.test(hf, control)$p.value
}

Ns <- seq(from = 10, to = length(hfPopulation), by=10)
Ns_rep <- rep(Ns, each=10)
pvalues <- sapply(Ns_rep, calculatePvalue)

png("pvals-decrease.png")
par(c("font.sub", "cex.sub = 0.75", "col.sub"))
plot(Ns_rep, pvalues, log="y", xlab="sample size", ylab="p-values",
     title("P-values from random samples at varying sample size",
           sub = "The p-values decrease as we increase sample 
           size when the alternative hypothesis is true.",
           cex.sub = 0.75, font.sub = 3
           )
     )

abline(h=c(.01, .05), col="red", lwd=2)
dev.off()