
#Exampel1

library(XuJIngd3plus)

sampledata <- data.frame( value = c(100,70,40,15,5,1), 
                          name = c('alpha','beta','gamma','delta','epsilon','zeta'),
                          group = c('group 1','group 2','group 2','group 2','group 1','group 1'))
XJtreemap(sampledata)
