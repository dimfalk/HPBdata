#' Data: 1-minutely meteorological observations for 02290 'Hohenpeißenberg' site (Bavaria, Germany)
#'
#' Historical observations of precipitation encompassing the period 1994-07-01 06:20 UTC to 2023-12-31 22:59 UTC \cr
#' Y = 47.8009° N; X = 11.0108° E; Z = 977 m a.s.l. \cr \cr
#' <https://opendata.dwd.de/climate_environment/CDC/observations_germany/climate/1_minute/precipitation/meta_data/>
#'
#' @format A list of length 1 containing an xts object (of length 15,517,000) representing the following parameter:
#' \describe{
#'   \item{RWH_RS_01}{xts object. Precipitation depth \code{[mm]}.}
#' }
#' @source <https://opendata.dwd.de/climate_environment/CDC/observations_germany/climate/1_minute/precipitation/historical/>
#' @note Last access: 2025-01-03
#' @description <https://opendata.dwd.de/climate_environment/CDC/observations_germany/climate/1_minute/precipitation/DESCRIPTION_obsgermany-climate-1min-rr_en.pdf>
#' @note License: CC BY 4.0
#' @note Copyright: Deutscher Wetterdienst 2025
"obs_1min"

#' Data: 10-minutely meteorological observations for 02290 'Hohenpeißenberg' site (Bavaria, Germany)
#'
#' Historical observations of various parameters encompassing the period 1993-12-09 13:50 UTC to 2023-12-31 23:40 UTC \cr
#' Y = 47.8009° N; X = 11.0108° E; Z = 977 m a.s.l. \cr \cr
#' <https://opendata.dwd.de/climate_environment/CDC/observations_germany/climate/10_minutes/air_temperature/meta_data/>
#'
#' @format A list of length 9 containing xts objects (of length 1,581,036 each) representing the following parameters:
#' \describe{
#'   \item{PP_10}{xts object. Mean atmospheric pressure at station altitude \code{[hPa]}.}
#'   \item{TT_10}{xts object. Mean air temperature at 2 m above ground \code{[°C]}.}
#'   \item{TM5_10}{xts object. Mean air temperature at 5 cm above ground \code{[°C]}.}
#'   \item{RF_10}{xts object. Mean relative humidity \code{[\%]}.}
#'   \item{FF_10}{xts object. Mean wind velocity \code{[°C]}.}
#'   \item{DD_10}{xts object. Mean wind direction \code{[°C]}.}
#'   \item{GS_10}{xts object. Sum of global radiation \code{[J cm-2]}.}
#'   \item{SD_10}{xts object. Sum of sunshine duration \code{[h]}.}
#'   \item{RWS_10}{xts object. Precipitation depth \code{[mm]}.}
#' }
#' @source <https://opendata.dwd.de/climate_environment/CDC/observations_germany/climate/10_minutes/air_temperature/historical/>
#' @note Last access: 2025-01-03
#' @description <https://opendata.dwd.de/climate_environment/CDC/observations_germany/climate/10_minutes/air_temperature/DESCRIPTION_obsgermany_climate_10min_air_temperature_en.pdf>
#' @note License: CC BY 4.0
#' @note Copyright: Deutscher Wetterdienst 2025
"obs_10min"

#' Data: Daily meteorological observations for 02290 'Hohenpeißenberg' site (Bavaria, Germany)
#'
#' Historical observations of various parameters encompassing the period 1781-01-01 to 2023-12-31 \cr
#' Y = 47.8009° N; X = 11.0108° E; Z = 977 m a.s.l.
#'
#' @format A list of length 13 containing xts objects (of length 88,753 each) representing the following parameters:
#' \describe{
#'   \item{FX}{xts object. Maximum windgust \code{[m s-1]}.}
#'   \item{FM}{xts object. Mean wind velocity \code{[m s-1]}.}
#'   \item{RSK}{xts object. Precipitation depth \code{[mm]}.}
#'   \item{SDK}{xts object. Sunshine duration \code{[h]}.}
#'   \item{SHK_TAG}{xts object. Snow depth \code{[cm]}.}
#'   \item{NM}{xts object. Mean cloud cover \code{[1/8]}.}
#'   \item{VPM}{xts object. Mean vapor pressure \code{[hPa]}.}
#'   \item{PM}{xts object. Mean atmospheric pressure at station altitude \code{[hPa]}.}
#'   \item{TMK}{xts object. Mean air temperature at 2 m above ground \code{[°C]}.}
#'   \item{UPM}{xts object. Mean relative humidity \code{[\%]}.}
#'   \item{TXK}{xts object. Maximum air temperature at 2 m above ground \code{[°C]}.}
#'   \item{TNK}{xts object. Minimum air temperature at 2 m above ground \code{[mm]}.}
#'   \item{TGK}{xts object. Minimum air temperature at 5 cm above ground \code{[°C]}.}
#' }
#' @source <https://opendata.dwd.de/climate_environment/CDC/observations_germany/climate/daily/kl/historical/>
#' @note Last access: 2025-01-03
#' @description <https://opendata.dwd.de/climate_environment/CDC/observations_germany/climate/daily/kl/DESCRIPTION_obsgermany-climate-daily-kl_en.pdf>
#' @note License: CC BY 4.0
#' @note Copyright: Deutscher Wetterdienst 2025
"obs_1d"
