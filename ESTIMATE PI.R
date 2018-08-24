#This script estimate pi using nonrandom points
n.row<-100000
n.col<-100000
col.name<-c("x","y","distance")
nonrandom<-matrix(NA,nrow=n.row*n.col, ncol = length(col.name))
colnames(nonrandom)<-col.name
for(i in 1:n.row)
{
  cat(i,"\n")
  nonrandom[c(((i-1)*n.col+1):(i*n.col)),"x"]<-2*i/n.row
  nonrandom[c(((i-1)*n.col+1):(i*n.col)),"y"]<-2*c(1:n.col)/n.col-1
}
nonrandom[,"distance"]<-(nonrandom[,"x"]^2+nonrandom[,"y"]^2)^0.5
pi.estimate<-length(which(nonrandom[,"distance"]<=1))/(n.row*n.col)*4
pi.estimate
