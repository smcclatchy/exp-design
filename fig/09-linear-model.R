u <- runif(length(diet), -0.075, 0.075)
png(filename = "linear-model.png", width = 610, height = 600)
boxplot(bw10~diet, xlab="Diet", ylab="Body Weight at 10 Weeks",
        xlim=c(0,3), border=FALSE)
abline(v=1:2, lty=2, col="gray50")
points(as.integer(diet) + 2*u, bw10, col="lightgray")
points(x=1, y=41, col="red")
abline(lm(bw10 ~ diet)$coef, col="blue", lwd=2)
text(x = 0.45, y = 49,
     label = "data = model + error", cex=0.7, font = 2)
text(x = 0.45, y = 46.5,
     label = "body weight =\n25.9 + expression(2.6 * diet) + error", cex=0.7)
text(x = 0.1, y = 24.5,
     label = "beta0 = y-intercept =\n25.9", cex=0.7)
text(x = 0.18, y = 28, label = "beta1 = slope =\n2.6", cex = 0.7)
segments(x0=0.3, y0=27, x1=0.3, y1=28, 
         col="red", lty="longdash", lwd = 0.8)
segments(x0=0.3, y0=28.3, x1=0.8, y1=28.3, 
         col="red", lty="longdash", lwd = 0.8)
dev.off()

text(x = 215, y = 266, label = "y[i]", parse=TRUE) 
text(x = 215, y = 137, label = "hat(y)[i]", parse=TRUE) 
  annotate("point", x=214, y=153, color="red") 
segments(x=214, xend = 214, y=153, yend = 256, color="red")  
text(x=175, y=230, label="error or residual") 
text(x = 185, y = 210, label = "epsilon[i] == y[i]-hat(y)[i]")