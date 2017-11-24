# Q1
batch_1<-c(89, 88, 97, 94)
batch_2<-c(85, 77, 92, 79)
batch_3<-c(81, 87, 87, 85)
batch_4<-c(87, 92, 89, 84)
batch_var = vector()

for(i in 1:4) {batch_var[i] = "batch_1"}
for(i in 5:8) {batch_var[i] = "batch_2"}
for(i in 9:12) {batch_var[i] = "batch_3"}
for(i in 13:16) {batch_var[i] = "batch_4"}

batch_values = c(batch_1, batch_2, batch_3, batch_4)
batch_model = aov(formula=batch_values~batch_var)
anova(batch_model)

# Q2
calories<-c(8, 9, 6, 7, 3)
fats<-c(2, 4, 3, 5, 1)
carbs<-c(3, 5, 4, 2, 3)
control<-c(2, 2, -1, 0, 3)
treatments = vector()

for(i in 1:5) {treatments[i] = "calories"}
for(i in 6:10) {treatments[i] = "fats"}
for(i in 11:15) {treatments[i] = "carbs"}
for(i in 16:20) {treatments[i] = "control"}

values = c(calories, fats, carbs, control)
model = aov(formula=values~treatments)
anova(model)
TukeyHSD(model)
