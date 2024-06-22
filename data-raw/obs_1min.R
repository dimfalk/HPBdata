## code to prepare `obs_1min` dataset goes here

library(timeseriesIO)
#> 0.7.80

station <- get_cdc_stations(res = "1_minute",
                            par = "precipitation",
                            q = "historical") |> dplyr::filter(stations_id == "02290")

timeseriesIO::dwn_cdc_data(station, sub = "1996/2023")

fnames <- list.files(pattern = "produkt_ein_min_")

xtslist <- purrr::map(fnames, timeseriesIO::read_cdc_txt, station)

unlink(fnames)

obs_list <- timeseriesIO::xtslist_rbind_all(xtslist)

obs_1min <- rbind(obs_list[["RWH_01"]]["1994-07-01/2008-10-14"] |> xts_trim_na(),
                  obs_list[["RS_01"]]["2008-10-14/2024-06-21"] |> xts_trim_na()) |>
  xts_inflate(unit = "1 min", fill = 0) |> list("RWH_RS_01" = _)

# shift reference timestamps to the left side of the interval
obs_1min[["RWH_RS_01"]] <- obs_1min[["RWH_RS_01"]] |> timeseriesIO::idx_shift("left")

# subset to period
obs_1min <- timeseriesIO::xtslist_subset(obs_1min, "1996/2023")

usethis::use_data(obs_1min, overwrite = TRUE)
