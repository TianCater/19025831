


    seasons_list <- c("Spring","Summer","Autumn","Winter")

    spring_months <- c("Mar", "Apr", "May")
    summer_months <- c("Jun", "Jul", "Aug")
    autumn_months <- c("Sep", "Oct", "Nov")
    winter_months <- c("Dec", "Jan", "Feb")

adding_seasons <- function(df_weather) {

df_weather1 <- df_weather |> mutate(Month = format(date,"%b"), Year = format(date,"%Y")) |>
    mutate(Season = case_when(Month %in% spring_months ~ "Spring",
                              Month %in% summer_months ~ "Summer",
                              Month %in% autumn_months ~ "Autumn",
                              Month %in% winter_months ~ "Winter"))

 return(df_weather1)

}







