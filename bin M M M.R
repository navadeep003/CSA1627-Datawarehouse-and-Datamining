data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bin_width <- 10
bin_means <- tapply(data, (data - min(data)) %/% bin_width, mean)
cat("Smoothing by Bin Mean:", bin_means, "\n")
bin_medians <- tapply(data, (data - min(data)) %/% bin_width, median)
cat("Smoothing by Bin Median:", bin_medians, "\n")
bin_boundaries <- unique(sort(c(seq(min(data), max(data), by = bin_width), max(data))))
cat("Smoothing by Bin Boundaries:", bin_boundaries,"\n")