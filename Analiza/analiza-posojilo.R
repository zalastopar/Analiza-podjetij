time <- c(2019, 2018, 2017, 2016, 2015)
# neto dobicek
neto <- t(IPI_adidas[12,])

png("Graphs/neto_zasluzek.png")
plot(y = neto, x = time, type = "p", col = "palegreen", lwd = 2, ylab = "Net income [$]",
                  main = "Net income", xlim = c(2015, 2020), ylim = c(0, 3000000), xlab = "Time")
abline(lm(neto ~ time), col = "hotpink", lwd = 2)
dev.off()
