grades.summary <-
function(path) {
#this is the data file with the grades#
hwgrades <- read.csv(path)
#here are the names or the columns#
names(hwgrades)
#this is the summary of hwgrades$X.1#
summary(hwgrades$Final)
#this is the mean of hwgrades$X.1
hwmean = mean(hwgrades$Final)
#standard deviation of hwgrades$X.1#
sdev = sd(hwgrades$Final)
#here we set up the normal bell curve with mean and sd from above#
x=seq(0,100,length=200)
y=dnorm(x,mean=hwmean,sd=sdev)
#print to file#
png(file="gradesSummary.png", bg="white")
#histogram#
hist(hwgrades$Final, col = "blue", breaks=10, freq = FALSE)
#density#
lines(density(hwgrades$Final), col = "red", lwd = 2)
#bell curve#
lines(x,y,type="l",lwd=2,col="green")
dev.off()
}
