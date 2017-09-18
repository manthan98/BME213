
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

> library(readr)
> chap03q14VasopressinVoles <- read_csv("~/Desktop/chap03q14VasopressinVoles.csv")
Parsed with column specification:
cols(
  treatment = col_character(),
  percent = col_integer()
)
> View(chap03q14VasopressinVoles)
> barplot(chap03q14VasopressinVoles$percent, chap03q14VasopressinVoles$percent)
> ? barplot
> barplot(chap03q14VasopressinVoles$percent)
> barplot(chap03q14VasopressinVoles$percent, chap03q14VasopressinVoles$treatment)
Error in width/2 : non-numeric argument to binary operator
In addition: Warning message:
In mean.default(width) : argument is not numeric or logical: returning NA
> plot(chap03q14VasopressinVoles$percent)
> plot(chap03q14VasopressinVoles$treatment,chap03q14VasopressinVoles$percent)
Error in plot.window(...) : need finite 'xlim' values
In addition: Warning messages:
1: In xy.coords(x, y, xlabel, ylabel, log) : NAs introduced by coercion
2: In min(x) : no non-missing arguments to min; returning Inf
3: In max(x) : no non-missing arguments to max; returning -Inf
> ? barplot
> barplot(chap03q14VasopressinVoles$treatment)
Error in -0.01 * height : non-numeric argument to binary operator
> barplot(chap03q14VasopressinVoles$percent)
> hist(chap03q14VasopressinVoles$percent)
> plot(chap03q14VasopressinVoles$percent)
> ? plot
> plot(chap03q14VasopressinVoles$treatment, chap03q14VasopressinVoles$percent)
Error in plot.window(...) : need finite 'xlim' values
In addition: Warning messages:
1: In xy.coords(x, y, xlabel, ylabel, log) : NAs introduced by coercion
2: In min(x) : no non-missing arguments to min; returning Inf
3: In max(x) : no non-missing arguments to max; returning -Inf
> plot(factor(chap03q14VasopressinVoles$treatment), chap03q14VasopressinVoles$percent)
> plot(factor(chap03q14VasopressinVoles$treatment), chap03q14VasopressinVoles$percent, ylab='percent (%)')
> plot(factor(chap03q14VasopressinVoles$treatment), chap03q14VasopressinVoles$percent, xlab='Treatment', ylab='percent (%)')
> barplot(factor(chap03q14VasopressinVoles$treatment), chap03q14VasopressinVoles$percent)
Error in barplot.default(factor(chap03q14VasopressinVoles$treatment),  : 
  'height' must be a vector or a matrix
> mean(chap03q14VasopressinVoles$percent)
[1] 68.06452
> controlPercent<-subset(chap03q14VasopressinVoles$percent, chap03q14VasopressinVoles$treatment=='control')
> enhancedPercent<-subset(chap03q14VasopressinVoles$percent, chap03q14VasopressinVoles$treatment=='enhanced')
> mean(controlPercent)
[1] 58.05
> mean(enhancedPercent)
[1] 86.27273
> stddev(controlPercent)
Error in stddev(controlPercent) : could not find function "stddev"
> std(controlPercent)
Error in std(controlPercent) : could not find function "std"
> sd(controlPerent)
Error in is.data.frame(x) : object 'controlPerent' not found
> sd(controlPercent)
[1] 29.75244
> sd(enhancedPercent)
[1] 12.92355
