data.df <- read.table("https://people.math.umass.edu/~anna/Stat597AFall2016/rnf6080.dat")
head(data.df)

cat("Количество столбцов -", ncol(data.df), "\n")
cat("Количество строк -", nrow(data.df), "\n")
cat(colnames(data.df))

data.df[7, 16]
data.df[126, ]

names(data.df) <- c("year", "month", "day", seq(0, 23))
head(data.df)
tail(data.df)

data.df$daily <- rowSums(data.df[4:27])
data.df[20, ]

library("ggplot2")
ggplot(data=data.df, aes(x=daily)) + geom_histogram(color="black", fill="lightblue")

head(subset(data.df, daily < 0), n=10)

summary(data.df[4:28])

fixed.df <- data.df[1:27]
fixed.df[fixed.df == -999] <- 0
fixed.df$daily <- rowSums(fixed.df[4:27])

library("ggplot2")
ggplot(data=fixed.df, aes(x=daily)) + geom_histogram(binwidth=10, color="black", fill="lightblue")
