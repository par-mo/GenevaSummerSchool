N= 1000
X=rnorm(n)
head(X) #: just to see some first values 
mean(X) #: for 1000 standard distribution: close to zero
var(X) #: close to  one
median(X) #: close to zero
mean(X^4) # : close to 3
boxplot(X)
summary(X)
