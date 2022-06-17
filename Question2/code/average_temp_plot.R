

# Same but with colour varying

average_temp_plot <- function(df_weather){

g <- df_weather |>
    ggplot() +
    geom_point(aes(x = date, y = mean_temp, colour = mean_temp)) +
    scale_colour_gradient2(low = "blue", mid = "green" , high = "red", midpoint = 16) +
    geom_smooth(aes(x = date, y = mean_temp), color = "red",size = 1) +
    scale_y_continuous(limits = c(-5,30), breaks = seq(5,30,5)) +
    ggtitle ("Daily average temperature") +
    xlab("Date") +  ylab ("Average Temperature ( ºC )")
g

}

