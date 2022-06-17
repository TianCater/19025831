


vaccinations_per_region <- function(df_owid_adj, xaxis_size = 5, xaxis_rows = 3){


    library(scales)
    library(lubridate)
    gg <-
        df_owid_adj |> arrange(date) |>
        ggplot() +
        geom_col(aes(x = date, y = total_vaccinations, color = continent), size = 1, alpha = 0.8) +
        facet_wrap(~continent) +
        ggtitle(label = "Vaccinations per continent") + labs(x = "", y = "total vaccinations") + theme_bw() +
        scale_x_date()  + scale_y_continuous(labels = comma)

}

