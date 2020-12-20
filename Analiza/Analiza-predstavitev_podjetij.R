# Puma

# prodaja
prodaja <- data.frame("value" = c(2552.5, 2068.7, 881.1), 
"thing" = c("Footwear", "Apparel", "Accessories"))
kolacnik_prodaja <- ggplot(prodaja, aes(x = "", y = value, fill = thing)) + 
  geom_bar(stat = "identity", color = "white") +
  labs(title ="Sale structure") + labs(fill = "") +
  coord_polar("y") + theme_void() + scale_fill_brewer(palette="Set3") + 
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5))

png("Graphs/prodaja.png", height =157 , width = 268)
print(kolacnik_prodaja)
dev.off()

# net earnings
sales <- data.frame("Year" = c(2019:2010), 
                      "value" = c(5502.2, 4648.3, 4135.9, 3626.7, 3387.4, 2972.0, 2985.3, 3270.7, 3009.0, 2706.4))
png("Graphs/sales_since_2010.png")
graf_net_ear <- plot(sales, type = "l", ylab = "[mio €]", col = "hotpink", lwd = 2, main = "Sales through time")
dev.off()

# waste
waste <- data.frame("Year" = c(2019:2015), 
                    "Waste" = c(3154, 4877, 5293, 5302, 5007))

png("Graphs/waste.png")
graph_waste <- plot(waste, type = "l", col = "palegreen", lwd = 2, main = "Waste through time", ylab = "Waste [tons]")
dev.off()               