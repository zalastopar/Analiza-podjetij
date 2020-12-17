time <- c(2019, 2018, 2017, 2016, 2015)
# neto dobicek
neto <- t(IPI_adidas[12,])

graf_neto <- plot(y = neto, x = time, type = "p", col = "palegreen", lwd = 2, ylab = "Net income [$]",
                  main = "Net income")
abline(lm(neto ~ time), col = "hotpink", lwd = 2)

