# Q1
expected<-matrix(c(22, 15, 4, 10), ncol = 2)
fisher.test(expected)

# Q2
data<-matrix(c(23, 38, 161, 182, 316, 280), ncol=3)
chisq.test(data)
