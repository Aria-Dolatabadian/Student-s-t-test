#Student’s t-test

#One-sample t-test

yield <- c(2280, 2690, 2080, 2820, 1340, 2080, 2480, 2420, 2150, 1880)
yld.diff <- yield - 1810
yld.dat<-data.frame(yield, yld.diff)
yld.dat

colMeans(yld.dat)

t.test(yld.diff)

t.test(yield, mu=1810)

t.test(yield, alternative="greater", mu=1810)

#Two-sample t-Test

sbeet.dat <- read.csv("sugarbeet.csv")
sbeet.dat$Yield <- round(sbeet.dat$Yield * 2.24, 1) # Convert data to SI units
head(sbeet.dat)

RR <- subset(sbeet.dat, sbeet.dat$Type == "R")
CON <- subset(sbeet.dat, sbeet.dat$Type == "C")
t.test(RR$Yield, CON$Yield)

t.test(Yield ~ Type, data=sbeet.dat)

#Paired t-Test

t.test(Yield ~ Type, data=sbeet.dat, paired=T)

RR$Yield - CON$Yield -> diff.Yield
t.test(diff.Yield)

