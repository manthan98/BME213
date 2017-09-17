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

[Workspace loaded from ~/.RData]

> View(sample)
> View(ecg)
> View(ecg)
> load("~/Desktop/ecg.RData")
> View(qrs.14)
> Male<-subset(qrs.14$gender=='male')
Error in subset.default(qrs.14$gender == "male") : 
  argument "subset" is missing, with no default
> Male<-subset(qrs.14$gender, qrs.14$gender=='male')
> Female<-subset(qrs.14$gender, qrs.14$gender=='female')
> remove(Male)
> remove(Female)
> Male<-subset(qrs.14, qrs.14$gender=='male')
> View(Male)
> Female<-subset(qrs.14, qrs.14$gender=='female')
> summary(Male$duration)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  0.003   0.719   0.841   0.798   0.944   1.110 
> summary(Female$duration)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 0.7080  0.7440  0.7640  0.7715  0.7960  0.8670 
> mean(Male$duration)
[1] 0.7980263
> mean(Female$duration)
[1] 0.771473
> sd(Made$duration)
Error in is.data.frame(x) : object 'Made' not found
> sd(Male$duration)
[1] 0.2152375
> sd(Female$duration)
[1] 0.03475873
> IQR(Male$duration)
[1] 0.225
> IQR(Female$duration)
[1] 0.052
> boxplot(Male$duration, Female$duration)
> hist(Male$duration)
> hist(Male$duration, xlab='Duration', main="")
> boxplot(Male$duration, Female$duration, names = c('Male', 'Female'))
> View(Male)
> 
