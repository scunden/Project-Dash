df <- data.frame()

for (year in c(2017,2018,2019)){
  print(year)
  data_url = paste0("https://github.com/ryurko/nflscrapR-data/raw/master/play_by_play_data/regular_season/reg_pbp_",toString(year),".csv")
  df <- read.csv(url(data_url))
  df$year=year
  write.csv(df,paste0('data',toString(year),'.csv'))
  }