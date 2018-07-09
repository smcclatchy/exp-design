# Plot of residuals vs. fitted values.

pheno <- read.csv(file = "../data/bodyWeights.csv", 
                  stringsAsFactors = FALSE)
model <- lm(BW.10 ~ Diet, data = pheno)
png(filename = "resid-vs-fitted.png", 
    width = 610, height = 600)
plot(model, which = 1)
dev.off()