library('datasets')
# skewness:
x = rivers
a = table(x)
a

# absoulute measures: 


mean(x)-median(x)

## mean - mode. here mode is no unique, so choosing the smallest mode
mean(x)-as.numeric(names(a[which.max(a)]))

as.numeric(quantile(x,probs = .75)+quantile(x,probs = .25)-2*quantile(x,probs = .5))


## relative measures: 

# Pearson's first coefficient:
(mean(x)-as.numeric(names(a[which.max(a)])))/sqrt(var(x))

# Pearson's second coefficient:
3*(mean(x)-median(x))/sqrt(var(x))

# Bowely:
(as.numeric(quantile(x,probs = .75)+quantile(x,probs = .25)-2*quantile(x,probs = .5))
)/(as.numeric(quantile(x,probs = .75)-quantile(x,probs = .25)))

#  beta_1:
dev = x-mean(x)
beta_1 = (mean(dev**3))**2/(mean(dev**2))**3
beta_1

# gamma_1
gamma_1 = (mean(dev**3))/(mean(dev**2))**1.5
gamma_1

gamma_1**2 ## ganmma_1**2 = beta_1

## for grouped dicrete, convert into ungrouped and calculate. 
## for grouped, calculate using midvalues

library(e1071)
skewness(x)
skewness(x,type=1) # is gamma_1

# bettter option in a multivariate data or data frame
library('moments')
skewness(x)         # gamma_1
detach(package:moments)
