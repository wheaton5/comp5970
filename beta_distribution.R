

alpha = 1
beta = 1
x = seq(0,1,by=0.001)
y = dbeta(x,alpha, beta)

data = data.frame(x=x,y=y)

ggplot(data)+geom_line(aes(x=x,y=y))