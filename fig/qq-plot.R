# QQ plot 

pheno <- read.csv(file = "../data/bodyWeights.csv", 
                  stringsAsFactors = FALSE)
model <- lm(BW.10 ~ Diet, data = pheno)
png(filename = "qq-plot.png", 
    width = 610, height = 600)
qqnorm(model$residuals)
qqline(model$residuals)
dev.off()