u <- runif(length(diet), -0.075, 0.075)
boxplot(bw10~diet, xlab="Diet", ylab="Body Weight at 10 Weeks",
xlim=c(0,3), border=FALSE)
points(as.integer(diet) + 2*u, bw10, col="lightgray")
points(x=1, y=mean(bw10[which(bw$Diet=="chow")], na.rm = TRUE))
points(x=2, y=mean(bw10[which(bw$Diet=="hf")], na.rm = TRUE))
abline(lm(bw10 ~ diet)$coef, col="blue", lwd=2)
text(x = 0.8, y = 47.5, label = "body weight = 25.9 + (2.6 * diet) + error", cex=0.7)
text(x = 0.19, y = 25, label = "alpha = 25.9", cex=0.7)
text(x = 0.5, y = 30, label = "Beta = 2.6", cex = 0.7)

segments(aes(x=50, y=60), data=cc_data, xend=50, yend=100, color="red", linetype="dashed", size = 0.4)
segments(aes(x=120, y=100), data=cc_data, xend=50, yend=100, color="red", linetype="dashed", size = 0.4)


