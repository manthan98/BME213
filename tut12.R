x<-c(1.59, 1.67, 1.65, 1.72, 1.79, 1.77, 1.74, 1.74, 1.77, 1.78, 1.76, 1.81, 1.83, 1.83, 1.84, 1.87, 1.92, 1.95, 1.98, 1.99, 2.07)
y<-c(0.44, 1.43, 1.57, 0.14, 0.27, 0.35, 0.85, 1.13, 1.47, 1.51, 1.99, 1.06, 1.20, 1.23, 0.80, 2.53, 1.23, 1.10, 1.61, 1.95, 2.95)

# Part 1.
plot(x,y)

# Part 2.
r = cov(x,y) / (sd(x) * sd(y))

# Part 3.
model = lm(y~x)
abline(-4.505, 3.189, col="red")

# Part 4.
qt(0.025, 20)
SE_b = (sd(y) / sd(x))*sqrt((1-r^2)/(21-2))

# Part 5-B.
t = 3.189 / SE_b

# Part 6.
SS_regression = vector()
SS_residual = vector()

for(i in 1:21) {
  SS_regression[i] = ((-4.505 + 3.189*(x[i])) - mean(y))^2
  SS_residual[i] = (y[i] - (-4.505 + 3.189*(x[i])))^2
}

sum(SS_regression) / (sum(SS_regression) + sum(SS_residual))