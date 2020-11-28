# Analiza bilance
bilanca_puma_analiza <- cbind(bilanca_puma[3:25,2]/4918469,
                                   bilanca_puma[3:25,3]/3672245.850, bilanca_puma[3:25,4]/3422561.1240,
                                   bilanca_puma[3:25,5]/2914690.6928, bilanca_puma[3:25,6]/2852720.4446)
bilanca_puma_analiza <- round(bilanca_puma_analiza, 3)
bilanca_puma_analiza <- cbind(bilanca_puma[3:25,1], bilanca_puma_analiza)


# Analiza IPI
IPI_puma_analiza <- cbind(IPI_puma[3:14, 1], round(IPI_puma[,2:6]/IPI_puma$"2015" * 100)[3:14,])


