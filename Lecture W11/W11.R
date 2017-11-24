# EXAMPLE 1

# Setup sample vectors.
treatment1=c(243, 251, 275, 291, 347, 354, 380, 392)
treatment2=c(206, 210, 226, 249, 255, 273, 295, 309)
treatment3=c(241, 258, 270, 293, 328)
treatments = vector()

for(i in 1:8) {treatments[i]="1"}
for(i in 9:16) {treatments[i]="2"}
for(i in 17:21) {treatments[i]="3"}

values = c(treatment1, treatment2, treatment3)

model=aov(formula=values~treatments)
anova(model)
TukeyHSD(model)

# Put everything in one table.
data = data.frame(Treatment=treatments, Folate=values)

# Make strip chart.
stripchart(values~treatments, vertical=TRUE, xlab="Treatment", ylab="Folate Level")

# Store means of each group.
means=c(mean(treatment1), mean(treatment2), mean(treatment3))
means

# Add means to graph.
points(c(1, 2, 3), means, pch=16, col="red") # X, Y convention, pch makes it solid.
m=mean(values)
m
abline(m, 0, col="salmon") # Adds horizontal overall mean line.

# SS error and SS groups.
sds=c(sd(treatment1), sd(treatment2), sd(treatment3))
n=c(8, 8, 5)
SS_error=sum(sds^2*(n-1))
SS_groups=sum(n*(means-m)^2)

# MS.
df_error=18
df_groups=2
MS_error=SS_error/df_error
MS_groups=SS_groups/df_groups

# F.
F=MS_groups/MS_error
pf(F, df_groups, df_error, lower.tail=FALSE)