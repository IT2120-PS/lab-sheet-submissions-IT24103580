setwd("C:\\Users\\ASUS\\Desktop\\IT24103580")

# Import the dataset
weights <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
attach(weights)

#Q1
#  Population mean & standard deviation
weights <- c(2.3, 2.7, 3.1, 2.9, 3.4, 2.5, 3.0, 2.8, 3.2, 2.6)  
pop_mean <- mean(weights)
pop_sd   <- sd(weights)

cat("Population Mean =", pop_mean, "\n")
cat("Population SD   =", pop_sd, "\n")

#Q3
#Take 25 samples of size 6 (with replacement)
set.seed(123)   
sample_means <- c()
sample_sds   <- c()

for(i in 1:25){
  sample_data <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i]   <- sd(sample_data)
}

print(data.frame(Sample=1:25, SampleMean=sample_means, SampleSD=sample_sds))

#Q3
#Mean & SD of sample means
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)

cat("Mean of Sample Means =", mean_of_sample_means, "\n")
cat("SD of Sample Means   =", sd_of_sample_means, "\n")

