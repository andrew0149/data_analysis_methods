v <- c("4", "8", "15", "16", "23", "42")
max(v)
sort(v)
sum(v)

v2 <- c("5", 7, 12)
v2[2] + v[3]

df3 <- data.frame(z1 = "5", z2 = 7, z3 = 12)
df3[1, 2] + df3[1, 3]

l4 <- list(z1 = "6", z2 = 42, z3 = "49", z4 = 126)
l4[[2]] + l4[[4]]
l4[2] + l4[4]
is.numeric(l4[2])
is.numeric(l4[[2]])