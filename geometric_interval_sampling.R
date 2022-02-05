

#geometric interval sampling
p = 3/64
x = c(0)
for (i in 1:30) {
  x = c(x, x[length(x)] + rgeom(1,3/64))
}
ggplot(data.frame(x=x))+geom_segment(aes(x=x,xend=x,y=0,yend=1))

y = c(0)
for (i in 1:30) {
  y = c(y, y[length(y)]+rnorm(1,64/3,14))
}

ggplot()+geom_segment(data=data.frame(x=x), aes(x=x,xend=x,y=0,yend=1))+
  geom_segment(data=data.frame(x=y),aes(x=x,xend=x,y=2,yend=3))