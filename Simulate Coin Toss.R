N=1000 #number of coin tosses
set.seed(1000) #the function set.seed is merely for reproducibility
flipsequence = sample(x=c(0,1), prob = c(0.33, 0.67), size =
                          N, replace = TRUE) #vector to hold results of coin toss, either 0 or 1
r=cumsum(flipsequence) #cumulative sum of flip sequence, adds the 0 or 1 after each toss
n = 1:N
runprop = r/n #to find the cumulative proportion of heads for the nth toss
plot(n, runprop, type ="o", log = "x", xlim = c(1,N), ylim =
         c(0.0, 1.0)) #log="x" helps us see the x-axis in terms of 1,5,10,50, etc.
lines(c(1,N), c(0.5, 0.5), lty = 3)
text(N, 0.3, paste("End Proportion = ", runprop[N]), adj =
         c(1,0), cex = 1.5)