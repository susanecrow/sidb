
plotEntry=function(entry){
  x=entry$data$time
  n=ncol(entry$data)
  ys=entry$data[,2:n]
  
  matplot(x, ys,type="b",lty=1, pch=19, main=entry$citationKey, 
          xlab=paste("Incubation time (",entry$variables$V1$units, ")"),
          ylab=paste("Respired CO2 (",entry$variables$V2$units, ")"))
  y.names=names(entry$data)[-1]
  legend("topright",y.names,col=1:(n-1),pch=19,lty=1,bty="n")
}
