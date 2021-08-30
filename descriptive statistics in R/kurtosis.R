# kurtosis
library('datasets')
x = rivers
dev = x-mean(x)

# beta_2
beta_2 = (mean(dev**4))/(mean(dev**2))**2
beta_2

# gamma_2
gamma_2 = ((mean(dev**4))/(mean(dev**2))**2)-3
gamma_2




library(e1071)
kurtosis(x,type = 1) ## gamma_2