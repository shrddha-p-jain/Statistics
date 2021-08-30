# measures of central dispersion
library('datasets')

###ungrouped dataset
# dataset rivers
x = rivers
x
a = table(x)
a
# range
range(x) # gives min and max
max(x)-min(x)

# coef of range
(max(x)-min(x))/(max(x)+min(x))

# IQR
as.numeric(quantile(x,probs = 0.75)-quantile(x,probs = 0.25))

# semi IQR
as.numeric((quantile(x,probs = 0.75)-quantile(x,probs = 0.25))/2)

# coef of  quartile deviation
as.numeric((quantile(x,probs = 0.75)-quantile(x,probs = 0.25))/
             (quantile(x,probs = 0.75)+quantile(x,probs = 0.25)))

# mean deviation about mean
a = x-mean(x)
sum(abs(a))/length(x)


# mean deviation about median
a = x-median(x)
sum(abs(a))/length(x)

# MAD: median absolute deviation
mad(x)

## MAD is 1.4286*median(deviation from medians) 
## 1.4286 is a constant choosen to ensure that the estimator of signma(sd)  is correc

## when data is normal, mad can be approximated to sd, and iqr = 1.349*s on an average
## ie, iqr will, on an avg be 1.349 times greater than mad,sd.

# mean deviation about mode
mode = as.numeric(names(which(table(x)==max(table(x)))))
a = x-mode[1]
sum(abs(a))/length(x)

# variance 
var(x) # NOTE: Sample variance is calculated

# standard deviation
sqrt(var(x))

# coef of variaion
sqrt(var(x))*100/mean(x)



# discrete


# convert to ungrouped, and continue
y=rep(x,f)
y

# countinuous:
# use classmarks instead of x
