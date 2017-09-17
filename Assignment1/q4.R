
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
> chap02q19FireflySpermatophoreMass <- read_csv("~/Desktop/chap02q19FireflySpermatophoreMass.csv")
Parsed with column specification:
cols(
  spermatophoreMass = col_double()
)
> View(chap02q19FireflySpermatophoreMass)
> View(chap02q19FireflySpermatophoreMass)
> hist(chap02q19FireflySpermatophoreMass$spermatophoreMass)
> hist(chap02q19FireflySpermatophoreMass$spermatophoreMass, xlab='mass', title='')
Warning messages:
1: In plot.window(xlim, ylim, "", ...) :
  "title" is not a graphical parameter
2: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
  "title" is not a graphical parameter
3: In axis(1, ...) : "title" is not a graphical parameter
4: In axis(2, ...) : "title" is not a graphical parameter
> hist(chap02q19FireflySpermatophoreMass$spermatophoreMass, xlab='mass', main='')
Warning messages:
1: In doTryCatch(return(expr), name, parentenv, handler) :
  "title" is not a graphical parameter
2: In doTryCatch(return(expr), name, parentenv, handler) :
  "title" is not a graphical parameter
3: In doTryCatch(return(expr), name, parentenv, handler) :
  "title" is not a graphical parameter
4: In doTryCatch(return(expr), name, parentenv, handler) :
  "title" is not a graphical parameter
5: In doTryCatch(return(expr), name, parentenv, handler) :
  "title" is not a graphical parameter
6: In doTryCatch(return(expr), name, parentenv, handler) :
  "title" is not a graphical parameter
7: In doTryCatch(return(expr), name, parentenv, handler) :
  "title" is not a graphical parameter
8: In doTryCatch(return(expr), name, parentenv, handler) :
  "title" is not a graphical parameter
> hist(chap02q19FireflySpermatophoreMass$spermatophoreMass, xlab='mass', main='')
> hist(chap02q19FireflySpermatophoreMass$spermatophoreMass, xlab='mass', main='')
> hist(chap02q19FireflySpermatophoreMass$spermatophoreMass, xlab='mass(g)', main='')
> hist(chap02q19FireflySpermatophoreMass$spermatophoreMass, xlab='mass (g)', main='')
