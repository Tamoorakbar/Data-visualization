#Assignment#1: Tamoor Akbar (F2018313032) Hamza Kashif (F2018313002)

#Uploading Library

library(ggplot2)
install.packages("ggplot2")

#Uploading dataset
diamonds
str(diamonds)
View(diamonds)
summary(diamonds)
?diamonds

# Histogram:
#Simple:
ggplot(diamonds,aes(x=price))+geom_histogram()
#by color
ggplot(diamonds,aes(x=price,fill=color))+geom_histogram(bins = 50)+
  ggtitle("Diamond Prices Histogram") +
  xlab("Diamond Price U$") + ylab("Frequency")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))

ggplot(diamonds,aes(x=price,fill=color))+geom_histogram(bins = 50)+
  ggtitle("Diamond Prices Histogram") +
  xlab("Diamond Price U$") + ylab("Frequency")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))+
  facet_grid(~color)


#by clarity
ggplot(diamonds,aes(x=price,fill=clarity))+geom_histogram(bins = 50)+
  ggtitle("Diamond Prices Histogram") +
  xlab("Diamond Price U$") + ylab("Frequency")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))

ggplot(diamonds,aes(x=price,fill=clarity))+geom_histogram(bins = 50)+
  ggtitle("Diamond Prices Histogram") +
  xlab("Diamond Price U$") + ylab("Frequency")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))+
  facet_grid(~clarity)

#by cut

ggplot(diamonds,aes(x=price,fill=cut))+geom_histogram(bins = 50)+
  ggtitle("Diamond Prices Histogram") +
  xlab("Diamond Price U$") + ylab("Frequency")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))

ggplot(diamonds,aes(x=price,fill=cut))+geom_histogram(bins = 50)+
  ggtitle("Diamond Prices Histogram") +
  xlab("Diamond Price U$") + ylab("Frequency")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))+
  facet_grid(~cut)


#Bar chart- Cut, Clarity & Color:
ggplot(data=diamonds,aes(x=cut))+geom_bar(fill="aquamarine3")+
  ggtitle("Bar Chart - Cut") +
  xlab("Cut") + ylab("Frequency")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))

ggplot(data=diamonds,aes(x=clarity))+geom_bar(fill="aquamarine2")+
  ggtitle("Bar Chart - Clarity") +
  xlab("clarity") + ylab("Frequency")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))

ggplot(data=diamonds,aes(x=color))+geom_bar(fill="aquamarine4")+
  ggtitle("Bar Chart - color") +
  xlab("color") + ylab("Frequency")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))



ggplot(data=diamonds,aes(x=cut,fill=clarity))+geom_bar()+
  ggtitle("Bar Chart - Cut & Clarity") +
  xlab("Cut") + ylab("Frequency")+
  theme(panel.background = (element_rect(color="red")),(element_blank())) + facet_grid(~color)

#Line Chart:
ggplot(data=diamonds, aes(x=carat,y=price))+geom_smooth(se=F)+
  ggtitle("Line Chart -Carar vs Price") +
  xlab("Carat") + ylab("Price in $")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))

ggplot(data=diamonds, aes(x=carat,y=price,fill=color,color=color))+geom_smooth(se=F)+
  ggtitle("Line Chart -Carar vs Price - class Color") +
  xlab("Carat") + ylab("Price in $")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))



ggplot(data=diamonds, aes(x=carat,y=price,fill=clarity,color=clarity))+geom_smooth(se=F)+
  ggtitle("Line Chart -Carar vs Price - class Clarity") +
  xlab("Carat") + ylab("Price in $")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))

  
ggplot(data=diamonds, aes(x=carat,y=price,fill=cut,color=cut))+geom_smooth(se=F)+
  ggtitle("Line Chart -Carar vs Price - class Cut") +
  xlab("Carat") + ylab("Price in $")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))




#Scatterd & Line Chart -Carar vs Price - class Cut
ggplot(data=diamonds, aes(x=carat,y=price,col=cut))+geom_point()+geom_smooth(se=F)+
  ggtitle("Scatterd & Line Chart -Carar vs Price - class Cut") +
  xlab("Carat") + ylab("Price in $")+
  theme(panel.background = (element_rect(color="red")),(element_blank()))
#theme_dark, theme_classic etc etc

ggplot(data=diamonds,
       aes(x=carat,y=price))+
  geom_point(aes(color=clarity))+
  geom_smooth(color="black",size=0.8,linetype=2)

#line types 0 = blank, 1 = solid, 2 = dashed, 3 = dotted, 4 = dotdash, 5 = longdash, 6 = twodash







#End

#Lecture 26-March
#Using scale_color_brewer(type="qual",palette = "set2")

ggplot(data=diamonds, aes(x=carat,y=price,col=cut))+geom_point()+geom_smooth(se=F)+
  ggtitle("Scatterd & Line Chart -Carar vs Price - class Cut") +
  xlab("Carat") + ylab("Price in $")+
  theme_classic()+
  scale_color_brewer(type="qual",palette = "set2")

#Violin
ggplot(data=diamonds,
       aes(x=clarity,y=price))+
         geom_violin()


