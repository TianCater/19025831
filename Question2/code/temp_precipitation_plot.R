

# Distribution of the average temperature by month - violin plot,
# with a jittered point layer on top, and with size mapped to amount of rain

violin_plot <- function(df_weather) {

    df_seasons <- adding_seasons(df_weather)

    df_seasons |>
        ggplot() +
        geom_violin(aes(x = Month, y = mean_temp),fill = "orange") +
        geom_point(aes(x = Month, y = mean_temp), colour = "blue", position = "jitter", size= 0.001) +
        ggtitle ("Temperature distribution by month with precipitation in blue") +
        xlab("Month") +  ylab ("Average temperature ( ºC )")



}

