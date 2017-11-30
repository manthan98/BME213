# Q3
pre_beer<-c(0.13, 0.13, 0.21, 0.25, 0.25, 0.32, 0.43, 0.44, 0.46, 0.50, 0.50, 0.50, 0.53, 0.54, 0.55, 0.55, 0.60, 0.60, 0.64, 0.65, 0.67, 0.70, 0.70, 0.79, 0.79)
post_beer<-c(0.49, 0.59, 0.27, 0.43, 0.50, 0.50, 0.37, 0.30, 0.58, 0.89, 0.67, 0.34, 0.48, 0.73, 0.80, 0.86, 0.77, 0.57, 0.87, 0.62, 0.93, 1.00, 0.81, 0.92, 1.00)
diff<-pre_beer-post_beerhist
t.test(pre_beer, post_beer, paired=TRUE)

# Q5
enhanced<-log10(c(100, 100, 100, 200, 200, 200, 200, 400, 400))
sham_treated<-log10(c(400, 400, 400, 800, 800))
untreated<-log10(c(400, 400, 800, 800, 800, 800))

mean(enhanced)
mean(sham_treated)
mean(untreated)
sd(enhanced)
sd(sham_treated)
sd(untreated)

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
m = mean(means)
df_error = sum(n) - 3
df_groups = 2

SS_error = sum(sds^2*(n-1))
SS_groups = sum(n*(means - m)^2)
SS_total = SS_error + SS_groups

MS_error = SS_error / df_error
MS_groups = SS_groups / df_groups

F = MS_groups / MS_error
pf(F, df_error, df_groups, lower.tail = FALSE)
R_squared = SS_groups / SS_total