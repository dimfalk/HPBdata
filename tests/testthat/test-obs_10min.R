test_that("Class is unchanged.", {

  expect_equal(class(obs_10min), "list")

  expect_s3_class(obs_10min[[1]], c("xts", "zoo"))
})

test_that("Dimensions are unchanged.", {

  expect_equal(length(obs_10min), 9)

  expect_equal(length(obs_10min[[1]]), 1581036)
})

test_that("Names are unchanged.", {

  cnames <- c("PP_10", "TT_10", "TM5_10", "RF_10", "FF_10", "DD_10", "GS_10",
              "SD_10", "RWS_10")

  expect_equal(names(obs_10min), cnames)

  expect_equal(names(obs_10min[[1]]), "PP_10")
})

test_that("Types are unchanged.", {

  expect_equal(typeof(obs_10min), "list")

  expect_equal(typeof(obs_10min[[1]]), "double")
})

test_that("Checksum is unchanged.", {

  expect_equal(sum(obs_10min[[1]], na.rm = TRUE), 1390216543)

  expect_equal(is.na(obs_10min[[1]]) |> sum(), 43010)
})

test_that("Time range is unchanged.", {

  rng <- zoo::index(obs_10min[[1]]) |> range()

  expect_equal(class(rng), c("POSIXct", "POSIXt"))

  expect_equal(as.character(rng[1]), "1993-12-09 13:50:00")

  expect_equal(as.character(rng[2]), "2023-12-31 23:40:00")
})

test_that("Attributes are unchanged.", {

  expect_equal(attr(obs_10min[[1]], "STAT_ID"), "02290")

  expect_equal(attr(obs_10min[[1]], "STAT_NAME"), "Hohenpeißenberg")

  expect_equal(attr(obs_10min[[1]], "X"), 11.0108)

  expect_equal(attr(obs_10min[[1]], "Y"), 47.8009)

  expect_equal(attr(obs_10min[[1]], "Z"), 977)

  expect_equal(attr(obs_10min[[1]], "TZONE"), "UTC")

  expect_equal(attr(obs_10min[[1]], "PARAMETER"), "Luftdruck")

  expect_equal(attr(obs_10min[[1]], "TS_START"), structure(755445000, class = c("POSIXct", "POSIXt"), tzone = "UTC"))

  expect_equal(attr(obs_10min[[1]], "TS_END"), structure(1704066000, class = c("POSIXct", "POSIXt"), tzone = "UTC"))

  expect_equal(attr(obs_10min[[1]], "TS_TYPE"), "measurement")

  expect_equal(attr(obs_10min[[1]], "MEAS_INTERVALTYPE"), TRUE)

  expect_equal(attr(obs_10min[[1]], "MEAS_BLOCKING"), "left")

  expect_equal(attr(obs_10min[[1]], "MEAS_RESOLUTION"), 10)

  expect_equal(attr(obs_10min[[1]], "MEAS_UNIT"), "hPa")

  expect_equal(attr(obs_10min[[1]], "MEAS_STATEMENT"), "mean")
})
