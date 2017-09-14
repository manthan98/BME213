R version 3.4.1 (2017-06-30) -- "Single Candle"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin15.6.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> library(readr)
> fatdata <- read_csv("~/Desktop/fatdata.csv", 
+     col_names = FALSE)
Parsed with column specification:
cols(
  X1 = col_integer(),
  X2 = col_double(),
  X3 = col_double(),
  X4 = col_double(),
  X5 = col_integer(),
  X6 = col_double(),
  X7 = col_double(),
  X8 = col_double(),
  X9 = col_double(),
  X10 = col_double(),
  X11 = col_double(),
  X12 = col_double(),
  X13 = col_double(),
  X14 = col_double(),
  X15 = col_double(),
  X16 = col_double(),
  X17 = col_double(),
  X18 = col_double(),
  X19 = col_double()
)
> View(fatdata)
> colnames(fatdata)
 [1] "X1"  "X2"  "X3"  "X4"  "X5"  "X6"  "X7"  "X8"  "X9"  "X10" "X11" "X12" "X13" "X14"
[15] "X15" "X16" "X17" "X18" "X19"
> colnames(fatdata)[2]
[1] "X2"
> colnames(fatdata)[2]<-"BodyFatPercentage"
> colnames(fatdata)[5]<-"Age"
> stem(fatdata)
Error in stem(fatdata) : 'x' must be numeric
> stem(fatdata$Age)

  The decimal point is 1 digit(s) to the right of the |

  2 | 2233334444
  2 | 55556666667777777888888899
  3 | 00111122223334444
  3 | 5555555555667778899999
  4 | 0000000000000000011111111112222222222223333333333333444444444
  4 | 556666667777777777788888999999999
  5 | 00000001111122223344444444
  5 | 555555555566667777888
  6 | 011112222234444
  6 | 555667777899
  7 | 00222224
  7 | 
  8 | 1

> ?stem
> ?histogram
No documentation for ‘histogram’ in specified packages and libraries:
you could try ‘??histogram’
> ?hist
> 
> 
> 
> 
> 
> 
> 
> hist(fatdata$BodyFatPercentage)
> hist(fatdata$BodyFatPercentage.xlab="Body Fat Percentage")
Error: unexpected '=' in "hist(fatdata$BodyFatPercentage.xlab="
> hist(fatdata$BodyFatPercentage,xlab="Body Fat Percentage")
> hist(fatdata$BodyFatPercentage,main="")
> hist(fatdata$BodyFatPercentage,col="Red")
> hist(fatdata$BodyFatPercentage,col="Magenta")
> hist(fatdata$BodyFatPercentage,breaks=70)
> hist(fatdata$BodyFatPercentage,main="",col="Magenta",breaks=70)
> hist(fatdata$BodyFatPercentage,main="",col="Magenta",freq=FALSE)
> hist(fatdata$BodyFatPercentage,xlab="Body Fat Percentage",main="",col="Magenta",freq=FALSE)
> ?plot
> plot(fatdata$Age,fatdata$BodyFatPercentage)
> boxplot(fatdata$Age)
> fatdata
# A tibble: 252 x 19
      X1 BodyFatPercentage    X3     X4   Age     X6    X7    X8    X9   X10   X11
   <int>             <dbl> <dbl>  <dbl> <int>  <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
 1     1              12.6  12.3 1.0708    23 154.25 67.75  23.7 134.9  36.2  93.1
 2     2               6.9   6.1 1.0853    22 173.25 72.25  23.4 161.3  38.5  93.6
 3     3              24.6  25.3 1.0414    22 154.00 66.25  24.7 116.0  34.0  95.8
 4     4              10.9  10.4 1.0751    26 184.75 72.25  24.9 164.7  37.4 101.8
 5     5              27.8  28.7 1.0340    24 184.25 71.25  25.6 133.1  34.4  97.3
 6     6              20.6  20.9 1.0502    24 210.25 74.75  26.5 167.0  39.0 104.5
 7     7              19.0  19.2 1.0549    26 181.00 69.75  26.2 146.6  36.4 105.1
 8     8              12.8  12.4 1.0704    25 176.00 72.50  23.6 153.6  37.8  99.6
 9     9               5.1   4.1 1.0900    25 191.00 74.00  24.6 181.3  38.1 100.9
10    10              12.0  11.7 1.0722    23 198.25 73.50  25.8 174.4  42.1  99.6
# ... with 242 more rows, and 8 more variables: X12 <dbl>, X13 <dbl>, X14 <dbl>,
#   X15 <dbl>, X16 <dbl>, X17 <dbl>, X18 <dbl>, X19 <dbl>
> boxplot(fatdata$BodyFatPercentage)
> view(fatdata)
Error in view(fatdata) : could not find function "view"
> View(fatdata)
> View(fatdata)
> min(fatdata$Age)
[1] 22
> sample<-subset(fatdata,fatdata$Age<40)
> View(sample)
> Age20<-subset(fatdata$BodyFatPercentage,fatdata$Age<40)
> View(sample)
> max(fatdata$Age)
[1] 81
> Age60<-subset(fatdata$BodyFatPercentage, fatdata$Age>=60)
> Age40<-subset(fatdata$BodyFatPercentage, fatdata$Age<60)
> boxplot(Age20, Age40, Age60)
> boxplot(Age20, Age40, Age60, names = C("20-40", "40-60", "60+"), xlab="Age", ylab="Body Fat Percentage", col=c("pink", "yellow", "red"))
Error in C("20-40", "40-60", "60+") : 
  object not interpretable as a factor
> boxplot(Age20, Age40, Age60, names = c("20-40", "40-60", "60+"), xlab="Age", ylab="Body Fat Percentage", col=c("pink", "yellow", "red"))
> summary(fatdata$BodyFatPercentage)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00   12.80   19.00   18.94   24.60   45.10 
> load("~/Desktop/ecg.RData")
> plot(ecg$time,ecg$reading,type="l")
> sample<-subset(ecg, ecg$time<5)
> plot(sample$time, sample$reading, type="l")
