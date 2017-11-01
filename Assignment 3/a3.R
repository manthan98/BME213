pnorm(2, mean = 2.47, sd = 0.72) # 2a
pnorm(3, mean = 2.47, sd = 0.72, lower.tail = FALSE) # 2b
pnorm(0.65, mean = 0.569, sd = 0.068, lower.tail = FALSE) # 3a
pnorm(0.835, mean = 0.8, sd = sqrt(0.16), lower.tail = FALSE) # 4a
2 * pnorm(0.14, lower.tail = FALSE) # 4b
1 - pnorm(5.4, mean = 7, sd = sqrt(7)) # 4c
pnorm(25, mean = 20, sd = sqrt(19.6), lower.tail = FALSE) # 5
1 - pnorm(20, mean = 20, sd = sqrt(19.6), lower.tail = FALSE) - pnorm(30, mean = 20, sd = sqrt(19.6)) #5
