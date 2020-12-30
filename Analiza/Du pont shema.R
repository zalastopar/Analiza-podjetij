# Du pont shema
# zadolžeost
#
library(broman)
# Dobičkonostnost kapitala ali ROE (Čisti dobiček / povprečni kapital)
time <- c(2019, 2018, 2017, 2016, 2015)
time2 <- c(2019, 2018, 2017, 2016)






# Povprečni kapital-Puma
p_k_2019_puma <- (sum(bilanca_puma[13,1]) + sum(bilanca_puma[13,2])) / 2
p_k_2018_puma <- (sum(bilanca_puma[13,2]) + sum(bilanca_puma[13,3])) / 2
p_k_2017_puma <- (sum(bilanca_puma[13,3]) + sum(bilanca_puma[13,4])) / 2
p_k_2016_puma <- (sum(bilanca_puma[13,4]) + sum(bilanca_puma[13,5])) / 2
povprecni_kapital_puma <- cbind("2019" = p_k_2019_puma, "2018" = p_k_2018_puma, "2017" = p_k_2017_puma, "2016"= p_k_2016_puma)

# Povprečni kapital-Nike
p_k_2019_nike <- (sum(bilanca_nike[12,1]) + sum(bilanca_nike[12,2])) / 2
p_k_2018_nike <- (sum(bilanca_nike[12,2]) + sum(bilanca_nike[12,3])) / 2
p_k_2017_nike <- (sum(bilanca_nike[12,3]) + sum(bilanca_nike[12,4])) / 2
p_k_2016_nike <- (sum(bilanca_nike[12,4]) + sum(bilanca_nike[12,5])) / 2
povprecni_kapital_nike <- cbind("2019" = p_k_2019_nike, "2018" = p_k_2018_nike, "2017" = p_k_2017_nike, "2016"= p_k_2016_nike)

# Povprečni kapital-adidas
p_k_2019_adidas <- (sum(bilanca_adidas[13 ,1]) + sum(bilanca_adidas[13,2])) / 2
p_k_2018_adidas <- (sum(bilanca_adidas[13 ,2]) + sum(bilanca_adidas[13,3])) / 2
p_k_2017_adidas <- (sum(bilanca_adidas[13 ,3]) + sum(bilanca_adidas[13,4])) / 2
p_k_2016_adidas <- (sum(bilanca_adidas[13 ,4]) + sum(bilanca_adidas[13,5])) / 2
povprecni_kapital_adidas <- cbind("2019" = p_k_2019_adidas, "2018" =p_k_2018_adidas, "2017" = p_k_2017_adidas, "2016"=p_k_2016_adidas)

# Povprečna sredstva-Puma
p_s_2019_puma <- (bilanca_puma[11,1] + bilanca_puma[11,2]) / 2
p_s_2018_puma <- (bilanca_puma[11,2] + bilanca_puma[11,3]) / 2
p_s_2017_puma <- (bilanca_puma[11,3] + bilanca_puma[11,4]) / 2
p_s_2016_puma <- (bilanca_puma[11,4] + bilanca_puma[11,5]) / 2
povprecna_sredstva_puma <- cbind("2019" = p_s_2019_puma, "2018" = p_s_2018_puma, "2017" = p_s_2017_puma, "2016" = p_s_2016_puma)

# Povprečna sredstva-Nike
p_s_2019_nike <- (bilanca_nike[10,1] + bilanca_nike[10,2]) / 2
p_s_2018_nike <- (bilanca_nike[10,2] + bilanca_nike[10,3]) / 2
p_s_2017_nike <- (bilanca_nike[10,3] + bilanca_nike[10,4]) / 2
p_s_2016_nike <- (bilanca_nike[10,4] + bilanca_nike[10,5]) / 2
povprecna_sredstva_nike <- cbind("2019" = p_s_2019_nike, "2018" = p_s_2018_nike, "2017" = p_s_2017_nike, "2016" = p_s_2016_nike)

# Povprečna sredstva-Adidas
p_s_2019_adidas <- (bilanca_adidas[11,1] + bilanca_adidas[11,2]) / 2
p_s_2018_adidas <- (bilanca_adidas[11,2] + bilanca_adidas[11,3]) / 2
p_s_2017_adidas <- (bilanca_adidas[11,3] + bilanca_adidas[11,4]) / 2
p_s_2016_adidas <- (bilanca_adidas[11,4] + bilanca_adidas[11,5]) / 2
povprecna_sredstva_adidas <- cbind("2019" = p_s_2019_adidas, "2018" = p_s_2018_adidas, "2017" = p_s_2017_adidas, "2016" = p_s_2016_adidas)

zadolzenost_puma <- data.frame(t(rbind("Time" = time2 , "V2" = povprecna_sredstva_puma,"V3" = povprecni_kapital_puma)))
zadolzenost_puma$Ratio <- round(zadolzenost_puma$V2/ zadolzenost_puma$V3,2)

zadolzenost_nike <- data.frame(t(rbind("Time" = time2 , "V2" = povprecna_sredstva_nike,"V3" = povprecni_kapital_nike)))
zadolzenost_nike$Ratio <- round(zadolzenost_nike$V2/ zadolzenost_nike$V3,2)

zadolzenost_adidas <- data.frame(t(rbind("Time" = time2 , "V2" = povprecna_sredstva_adidas,"VR" = povprecni_kapital_adidas)))
zadolzenost_adidas$Ratio <- round(zadolzenost_adidas$V2/ zadolzenost_adidas$V3,2)

colors <- c( brocolors("crayons")["Purple Heart"], brocolors("crayons")["Purple Pizzazz"], brocolors("crayons")["Inchworm"])
par(mfrow= c(1,1))
zadolzenost <- plot(zadolzenost_puma[, c(1, 4)], type = "l", col = brocolors("crayons")["Violet Blue"], 
                 main = "Zadolženost", cex.main = 2,cex.lab = 1.5, cex.axis = 1.5,
                 ylim = c(1.5,3), xlim = c(2016, 2019), lwd = 3)
lines(zadolzenost_adidas[, c(1, 4)], col = brocolors("crayons")["Inchworm"], lwd = 3)
lines(zadolzenost_nike[, c(1, 4)], col = brocolors("crayons")["Wild Strawberry"], lwd = 3)
text(x = c(2018, 2018.5, 2016.5), y = c(1.88,  2.4, 2.5), labels = c("Puma", "Nike", "Adidas"), col = colors)
