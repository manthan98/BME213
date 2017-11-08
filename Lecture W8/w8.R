# Example 1
coffee<-matrix(c(19, 122, 2473, 7768), ncol=2)
colnames(coffee)<-c("cancer", "no cancer")
rownames(coffee)<-c("coffee", "no coffee")
addmargins(coffee)
mosaicplot(coffee, col=c("red", "blue"), main="", cex.axis=0.9)
