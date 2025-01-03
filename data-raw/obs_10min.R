## code to prepare `obs_10min` dataset goes here

library(timeseriesIO)
#> 0.7.133

obs_10min <- list()

dirs <- c("air_temperature",
          "extreme_temperature",
          "extreme_wind",
          "precipitation",
          "solar",
          "wind")

# get all available data for defined station
for (dir_i in dirs) {

  station <- timeseriesIO::get_cdc_stations(res = "10_minutes",
                                            par = dir_i,
                                            q = "historical") |>
    dplyr::filter(stations_id == "02290")

  paste0("-------------------- ", dir_i, " --------------------") |> print()

  timeseriesIO::dwn_cdc_data(station, sub = "1993/2024")

  fnames <- list.files(pattern = "produkt_zehn_min_")

  xtslist <- purrr::map(fnames, timeseriesIO::read_cdc_txt, station)

  xtslist_merge <- timeseriesIO::xtslist_rbind_all(xtslist, tzone = "UTC")

  obs_10min <- append(obs_10min, xtslist_merge)

  unlink(fnames)
}

# subset to pars
pars <- c("PP_10", "TT_10", "TM5_10", "RF_10", "FF_10", "DD_10", "GS_10", "SD_10", "RWS_10")

obs_10min <- obs_10min[pars]

# shift reference timestamps to the left side of the interval
obs_10min <- purrr::map(obs_10min, timeseriesIO::idx_shift, side = "left")

# remove duplicated wind values due to overlap in time series
obs_10min[["FF_10"]] <- obs_10min[["FF_10"]] |> timeseriesIO::xts_rm_duplicated()
obs_10min[["DD_10"]] <- obs_10min[["DD_10"]] |> timeseriesIO::xts_rm_duplicated()

# subset to period
# obs_10min <- timeseriesIO::xtslist_subset(obs_10min, "2020")

usethis::use_data(obs_10min, overwrite = TRUE)
