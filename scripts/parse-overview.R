args = commandArgs(trailingOnly = TRUE)
INPUT = args[1]
OUTPUT = args[2]

# Number of decomal digits.
options(digits = 3)

# Read input file.
dataset <- read.csv(INPUT, header = FALSE, sep = " ")

# Gather statistics.
datasetMean <- apply(dataset, 2, mean)
datasetSd <- apply(dataset, 2, sd)

# Merge statistics.
datasetStats <- cbind(datasetMean, datasetSd)

write.table(x = datasetStats, file = OUTPUT, col.names = FALSE)
