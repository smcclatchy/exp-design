x <- c(rep(1,300), rep(2, 300))
y <- rgamma(600, shape = 1)
bad_data <- data.frame(x, y)
u <- runif(length(x), -0.075, 0.075)
cbPalette <- c('#d73027','#fc8d59','#fee090','#e0f3f8','#91bfdb','#4575b4')

png(filename = "bad-linear-model.png", width = 610, height = 600)
boxplot(y~x, xlab="Independent Variable", ylab="Dependent Variable",
        xlim=c(0,3), border=FALSE)
abline(v=1:2, lty=2, col=cbPalette[5])
points(as.integer(x) + 2*u, y, col=cbPalette[4])
abline(lm(y ~ x)$coef, col=cbPalette[6], lwd=2)
text(x = 0.5, y = 48,
     label = "data = model + error", font = 2)
text(x = 0.55, y = 46.5,
     label = expression(paste("body weight = 25.9 + ", (2.6 %*% x), " + error")))
text(x = 0.2, y = 24.5,
     label = expression(paste(beta[0], " = y-intercept")))
text(x = 0.15, y = 23.0,
     label = "= 25.9")
text(x = 0.2, y = 29.5, label = expression(paste(beta[1], " = slope")))
text(x = 0.2, y = 28, label = "= 2.6")
segments(x0=0.3, y0=27, x1=0.3, y1=28, 
         col=cbPalette[1], lty="longdash", lwd = 0.8)
segments(x0=0.3, y0=28.3, x1=0.8, y1=28.3, 
         col=cbPalette[1], lty="longdash", lwd = 0.8)
points(x=1, y=41, col=cbPalette[2])
text(x=1.2, y=35, label="error or\nresidual") 
segments(x0=1, y0=28.4, y1=41, 
         col=cbPalette[2], lty="longdash", lwd = 0.8)
dev.off()
