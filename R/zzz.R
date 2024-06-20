.onAttach <- function(libname, pkgname) {

  pkg <- "HPBdata"

  utils::packageVersion(pkg) |> packageStartupMessage()
}
