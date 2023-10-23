marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
hist_eq_freq <- hist(marks, breaks = "FD", main = "Equal-Frequency (Equi-Depth) Partitioning",
                     xlab = "Marks", ylab = "Frequency")
hist_eq_width <- hist(marks, breaks = 3, main = "Equal-Width Partitioning",
                      xlab = "Marks", ylab = "Frequency")
legend("topright", legend = c("Equal-Frequency", "Equal-Width"), col = 1:2, lty = 1:2)