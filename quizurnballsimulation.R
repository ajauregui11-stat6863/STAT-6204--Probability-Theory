urn1<-c("g","b")
urn2<-c("g","w")
ss=c(urn1,urn2)

agree = logical(10) #creating a logical vector of length 1000
for(i in 1:10)
{
  draw2 = sample(ss,2)
  agree[i]=(draw2==c("g","g"))
}