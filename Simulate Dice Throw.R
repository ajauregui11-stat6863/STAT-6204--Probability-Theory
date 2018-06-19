B = 10 # number of replications of the experiment
# A : At least one 6 appears when 6 fair dice are rolled.
n = 6 # number of dice
k = 1 # number of time 6 appears in the n dice
r = replicate(B,sum(sample(1:6, n, replace = TRUE) == 6))
sum(r >= k)/B # estimate probability

#####find the probability of observing a sum of 30 or more when we roll a die 8 times#######
b=1000000 #number of replications of experiment
n=8 #number of dice
k=1 #number of time 30 or more is the sum of the trial
r<-replicate(b,sum(sample(1:6,n,replace=T))>=30)
sum(r>=k)/b #estimate probability