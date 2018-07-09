# Create histogram and overlay normal curve.
# From Quick-R (https://www.statmethods.net) and Peter Dalgaard 

# Define color-blind friendly palette.
cbPalette <- c('#d73027','#fc8d59','#fee090',
               '#e0f3f8','#91bfdb','#4575b4')
pheno <- read.csv(file = "../data/bodyWeights.csv", 
                  stringsAsFactors = FALSE)
model <- lm(BW.10 ~ Diet, data = pheno)
resid <- model$residuals
png(filename = "residual-histogram.png", 
    width = 610, height = 600)
h <- hist(resid, breaks=20, col=cbPalette[1], 
     xlab="Model Residuals",
     main="Body Weight at 10 Weeks and Diet")
xfit<-seq(min(resid), max(resid), length=40) 
yfit<-dnorm(xfit, mean=mean(resid), sd=sd(resid)) 
yfit <- yfit * diff(h$mids[1:2]) * length(resid) 
h
lines(xfit, yfit, col=cbPalette[6], lwd=3)
dev.off()
