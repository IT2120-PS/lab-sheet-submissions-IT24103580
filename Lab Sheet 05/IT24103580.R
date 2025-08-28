setwd("C:\\Users\\it24103580\\Desktop\\IT24103580")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
names(Delivery_Times) <- c("Time")
attach(Delivery_Times)

breaks <- seq(20,70, length.out = 10)
hist(Time, breaks = breaks, right = FALSE, main = "HIstogram for Delivery Times", xlab = "Delivery time", ylab = "Frequency")

# The histogram appears to be right-skewed, with more delivery times concentrated in the lower range (20???35) and a gradual decrease in frequency as the delivery times increase. 
# There may also be a slight bimodal distribution with a secondary peak around the 40-45 mark.

h <- hist(Time, breaks = breaks, right = FALSE, plot = FALSE)
freq <- h$counts
cum_freq <- cumsum(freq)
new <- c(0, cum_freq)
plot(breaks, new, type = "l", main = "Cumulative Frequency Polygon (Ogive) for Delivery Times", 
     xlab = "Delivery Time", ylab = "Cumulative Frequency", ylim = c(0, max(new)))

