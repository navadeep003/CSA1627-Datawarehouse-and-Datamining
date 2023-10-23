pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
mean_value <- mean(pencils)
median_value <- median(pencils)
find_mode <- function(x) {
  unique_values <- unique(x)
  counts <- table(x)
  mode_values <- unique_values[counts == max(counts)]
  return(mode_values)
}
mode_value <- find_mode(pencils)
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")