#Name: Harini G
#Roll No: 2048034
#1.Import the LungCapData into R and attach it
Lungcap=read.xlsx("D:/Harini(christ unniversity)/2nd sem subjects/R/Lungcap.xlsx")
dim(Lungcap)
#2. Find the class and typeof Age and Height 
class(Lungcap$Age)
class(Lungcap$Height)
typeof(Lungcap$Age)
typeof(Lungcap$Height)
#3. Find the summary of the dataset
summary(Lungcap)
#4.Find the strength of the relationship between Age and Height (Hint:Using  Correlation)
cor(Lungcap$Age,Lungcap$Height)
#5.Perform a scatterplot for the above (Qn.4)
x=Lungcap$Age
y=Lungcap$Height
plot(x,y)
#6. Add a title to the plot and Label  x-axis and y-axis
plot(x,y,xlab="Age",ylab="Height",main="Age vs Height")
#7.Rotate the values on the y-axis and also change the limits of x-axis and y-axis
plot(x,y,xlab="Age",ylab="Height",main="Age vs Height",las=1,xlim=c(5,10),ylim=c(60,70))
#8.  Remove the axes of the plot and relabel these axes
library(ggplot2)
p=ggplot(Lungcap,aes(x,y))+labs(x = "Age", y = "Height",title="Age vs Height")
p+geom_point()
p + theme(axis.title = element_blank())+geom_point()
p+labs(x="Age",y="Height")+geom_point()
#9.Change the size of the plotting characters
p+geom_point(size=3)
#10.Change the color of the characters to red
p+geom_point(size=3,color="red")
#11.Draw the regression line to the plot predicting height using age
p+geom_point(size=3,color="red")+geom_smooth(method=lm)
#12.Change the color of the line to blue and the width of the line
p+geom_point(size=3,color="red")+geom_smooth(method=lm,size = 1.5,color="blue")
#13.Change the font of the plotting characters
p+geom_point(size=3,color="red",shape = 17)+geom_smooth(method=lm,size=1.5,color="blue")
#14.Change  the color of the plotting characters
p+geom_point(size=3,shape = 17,color="yellow")+geom_smooth(method=lm,size=1.5,color="blue")
#15.Identify gender on the plot for the age male and female
ggplot(Lungcap,aes(Age,Height))+geom_point(shape = 17,size=3,aes(colour=factor(Gender)))+geom_smooth(method=lm,size=1.5,color="blue")


