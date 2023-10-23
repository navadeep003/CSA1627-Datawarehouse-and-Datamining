points <- c(15, 20, 22, 25, 30, 35, 40, 42, 45, 50, 55, 60, 150)
boxplot(points, 
        main="Points Scored by Players", 
        xlab="Players", 
        ylab="Points",
        col="lightblue",
        border="blue")
outliers <- boxplot.stats(points)$out
if (length(outliers) > 0) {
  points(pch=16, col="red", outliers, cex=2)
  legend("topright", legend="Outliers", pch=16, col="red")
}
