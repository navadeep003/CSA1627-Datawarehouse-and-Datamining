data("mtcars")
p=mtcars$mpg
u=mtcars$qsec
plot(p,type="o",col="red",xlab="speed", ylab="distance", main="cars")
lines(u,type="o",col="blue")