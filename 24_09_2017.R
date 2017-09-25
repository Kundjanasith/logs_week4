args = commandArgs(trailingOnly=TRUE)

file_b <- read.table(args[1],sep=",",header=FALSE)
file_b$PID <- mean(file_b$V1)
file_b$USED <- mean(file_b$V4)
file_b$FREE <- mean(file_b$V5)
file_b <- file_b[c("USED","FREE")]
file_b <- file_b[1,]
write.table(file_b,file=args[2],row.names=FALSE,col.names=FALSE,sep=",")

file_m <- read.table(args[3],sep=",",header=FALSE)
file_m$PID <- mean(file_m$V1)
file_m$USED <- mean(file_m$V2)
file_m$FREE <- mean(file_m$V3)
file_m <- file_m[c("USED","FREE")]
file_m <- file_m[1,]
write.table(file_m,file=args[4],row.names=FALSE,col.names=FALSE,sep=",")
