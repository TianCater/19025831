

# Distribution of the average temperature by season - density plot


Distribution_ave_temp <- function(df_weather, limits = c(-5,30)) {

    df_seasons <- adding_seasons(df_weather)

    df_seasons |>
        ggplot() +
        geom_density(aes(x = mean_temp, colour = Season)) +
        scale_x_continuous(limits = c(5,30), breaks = seq(5,30,5)) +
        ggtitle ("Temperature distribution by season") +
        xlab("Average temperature ( ºC )") +  ylab ("Probability")
}



