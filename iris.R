#download the dataset
eye <- datasets::iris

head(eye,10)
tail(eye,10)

#columns
eye[,c(1,2)]

df1<-eye[,-5]

summary(eye[,1])

eye$Sepal.Length

summary(eye$Sepal.Length)
#summary of the data#


summary(eye)

#####


plot(eye$Sepal.Length)
plot(eye$Sepal.Length,eye$Petal.Length,type='p')
plot(eye)
#plot and lines
plot(eye$Sepal.Length, type ='l') #p:points, l:lines, b:both
plot(eye$Sepal.Length, xlab= 'length',
     ylab= 'no', main= 'sepal length',
     col= 'blue')
# horizontal bar plot
barplot(eye$Petal.Length,main='petal',
        ylab='vector',col='blue',hori=F,axes=T)

#histogram

hist(eye$Sepal.Length)
hist(eye$Petal.Length,
     main='lenght scale',
     xlab='length scale',col='blue')
#boxplot

boxplot(eye$Petal.Length,main="boxplot")

boxplot.stats(eye$Petal.Length)$out

#multiple box plots

boxplot(eye[,1:4],main='multiple')

#margin of grid(mar),
#no of rows and columns(mfrow),
#whether a border is to be included(bty)
#and position of the
#lables(las: 1 for horizontal, las:0 for vertical)
#byt- box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),las="0",bty="o")

plot(eye$Sepal.Length)
plot(eye$Sepal.Length,eye$Petal.Length)
plot(eye$Sepal.Length,type="l")
plot(eye$Sepal.Length,type="l")
plot(eye$Sepal.Length,type="l")
barplot(eye$Sepal.Length, main='lenght scale',
        xlab='lenght scale',col="green",hori=T)
hist(eye$Sepal.Length)
boxplot(eye$Sepal.Length)
boxplot(eye[,4:1], main='multiple box plot')
sd(eye$Petal.Length,na.rm=T)
skewness(eye$Petal.Length)
var(eye$Petal.Length)
kurtosis(eye$Petal.Length)
mean(eye$Petal.Length)
median(eye$Petal.Length)
mode(eye$Petal.Length)
