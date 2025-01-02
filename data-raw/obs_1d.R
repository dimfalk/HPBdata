## code to prepare `obs_1d` dataset goes here

library(timeseriesIO)
#> 0.7.129

station <- timeseriesIO::get_cdc_stations(res = "daily",
                                          par = "kl",
                                          q = "historical") |>
  dplyr::filter(stations_id == "02290")

timeseriesIO::dwn_cdc_data(station, sub = "1781/2024")

list.files(pattern = "Metadaten_") |> unlink()

fname <- list.files(pattern = "produkt_klima_tag_")

obs_1d <- timeseriesIO::read_cdc_txt(fname, station)

unlink(fname)

# subset to pars
pars <- c("FX", "FM", "RSK", "SDK", "SHK_TAG", "NM", "VPM", "PM", "TMK", "UPM", "TXK", "TNK", "TGK")

obs_1d <- obs_1d[pars]

usethis::use_data(obs_1d, overwrite = TRUE)
