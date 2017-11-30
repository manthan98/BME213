# Q3
pre_beer<-c(0.13, 0.13, 0.21, 0.25, 0.25, 0.32, 0.43, 0.44, 0.46, 0.50, 0.50, 0.50, 0.53, 0.54, 0.55, 0.55, 0.60, 0.60, 0.64, 0.65, 0.67, 0.70, 0.70, 0.79, 0.79)
post_beer<-c(0.49, 0.59, 0.27, 0.43, 0.50, 0.50, 0.37, 0.30, 0.58, 0.89, 0.67, 0.34, 0.48, 0.73, 0.80, 0.86, 0.77, 0.57, 0.87, 0.62, 0.93, 1.00, 0.81, 0.92, 1.00)
diff<-pre_beer-post_beerhist

# Part A.
Q3_values = c(pre_beer, post_beer)
Q3_treatment = vector()
for(i in 1:25) {Q3_treatment[i] = "1"}
for(i in 26:50) {Q3_treatment[i] = "2"}
stripchart(Q3_values~Q3_treatment, vertical=TRUE, xlab="Treatment", ylab="Activation")
Q3_means = c(mean(pre_beer), mean(post_beer))
points(c(1, 2), Q3_means, pch=16, col="red")
Q3_values_mean = mean(Q3_values)
abline(Q3_values_mean, 0, col="blue")

# Part B.
t.test(pre_beer, post_beer, paired=TRUE)

# Q5
enhanced<-log10(c(100, 100, 100, 200, 200, 200, 200, 400, 400))
sham_treated<-log10(c(400, 400, 400, 800, 800))
untreated<-log10(c(400, 400, 800, 800, 800, 800))

# Part C.
mean(enhanced)
mean(sham_treated)
mean(untreated)
sd(enhanced)
sd(sham_treated)
sd(untreated)

# Part E, F.
treatments=vector()
for(i in 1:9) {treatments[i]="Enhanced"}
for(i in 10:14) {treatments[i]="Sham-treated"}
for(i in 15:20) {treatments[i]="Untreated"}

values = c(enhanced, sham_treated, untreated)
model = aov(formula=values~treatments)
anova(model)

# Q6
n <- c(69, 16, 84, 31)
means <- c(-1.28, 3.06, 6.60, 13.90)
sds <- c(19.24, 15.99, 21.15, 23.31)

# Part B.
m = mean(means)
df_error = sum(n) - 3
df_groups = 3

SS_error = sum(sds^2*(n-1))
SS_groups = sum(n*(means - m)^2)
SS_total = SS_error + SS_groups

MS_error = SS_error / df_error
MS_groups = SS_groups / df_groups

F = MS_groups / MS_error
pf(F, df_groups, df_error, lower.tail = FALSE)
R_squared = SS_groups / SS_total

# Part C - need to fix.
Q6_data = chap15q27NonsenseMathEffect$areaClassification
Q6_changes = vector()
for(i in 1:200)
{
  Q6_changes[i] = chap15q27NonsenseMathEffect$ratingAdvantageOfManipulatedAbstractOverTheOther[i]
}
Q6_df = data.frame(Q6_data, Q6_changes)
Q6_model = aov(formula=Q6_changes~Q6_data)
TukeyHSD(Q6_model)

# Q7
Q7_X<-c(0.26, 0.44, 0.89, 1.26, 1.69, 1.97, 1.98, 2.24, 2.24, 2.58, 2.50, 2.75, 3.25, 3.85, 3.04, 2.55, 2.50, 3.11, 3.18, 3.52, 3.59, 3.40)
Q7_Y<-c(-0.07, -0.08, -0.008, -0.009, -0.023, -0.009, -0.036, -0.029, -0.008, -0.023, -0.006, -0.008, -0.006, 0.022, 0.018, 0.023, 0.022, 0.036, 0.059, 0.062, 0.049, 0.033)

# Part A - need to print plot.
plot(Q7_X, Q7_Y)

# Part B.
Q7_r = cov(Q7_X, Q7_Y) / (sd(Q7_X)*sd(Q7_Y))

# Part C.
cor.test(Q7_X, Q7_Y)

# Q8
Q8_X<-c(8, 14, 13, 15, 17, 18, 31, 32, 44, 54)
Q8_Y<-c(8, 3, 0, 0, 8, 15, 14, 10, 27, 26)

# Part A.
Q8_r = cov(Q8_X, Q8_Y) / (sd(Q8_X)*sd(Q8_Y))

# Part B.
Q8_SEr = sqrt((1-Q8_r^2)/(length(Q8_X)-2))

# Part D.
cor.test(Q8_X, Q8_Y)

# Q9
Q9_X<-c(5.82, 6.23, 5.84, 4.62, 5.05, 5.07, 4.63, 4.53, 4.27, 4.31, 4.51, 4.02, 3.18, 2.58, 2.30, 2.50, 3.40)
Q9_Y<-c(1.20, 1.21, 0.98, 1.22, 0.97, 1.02, 1.09, 0.84, 1.15, 1.20, 1.14, 1.12, 0.51, 0.63, 0.46, 0.60, 0.64)
Q9_r = cov(Q9_X, Q9_Y) / (sd(Q9_X)*sd(Q9_Y))

# Part A.
model = lm(Q9_Y~Q9_X)
newdata = data.frame(Q9_X=c(7.22))
predict(model, newdata, interval = "p")