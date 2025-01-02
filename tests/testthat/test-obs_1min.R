test_that("Class is unchanged.", {

  expect_equal(class(obs_1min), "list")

  expect_s3_class(obs_1min[[1]], c("xts", "zoo"))
})

test_that("Dimensions are unchanged.", {

  expect_equal(length(obs_1min), 1)

  expect_equal(length(obs_1min[[1]]), 15517000)
})

test_that("Names are unchanged.", {

  cname <- "RWH_RS_01"

  expect_equal(names(obs_1min), cname)

  expect_equal(names(obs_1min[[1]]), "RWH_RS_01")
})

test_that("Types are unchanged.", {

  expect_equal(typeof(obs_1min), "list")

  expect_equal(typeof(obs_1min[[1]]), "double")
})

test_that("Checksum is unchanged.", {

  expect_equal(sum(obs_1min[[1]], na.rm = TRUE), 33986.81)

  expect_equal(is.na(obs_1min[[1]]) |> sum(), 718)
})

test_that("Time range is unchanged.", {

  rng <- zoo::index(obs_1min[[1]]) |> range()

  expect_equal(class(rng), c("POSIXct", "POSIXt"))

  expect_equal(as.character(rng[1]), "1994-07-01 06:20:00")

  expect_equal(as.character(rng[2]), "2023-12-31 22:59:00")
})

test_that("Attributes are unchanged.", {

  expect_equal(attr(obs_1min[[1]], "STAT_ID"), "02290")

  expect_equal(attr(obs_1min[[1]], "STAT_NAME"), "Hohenpeißenberg")

  expect_equal(attr(obs_1min[[1]], "X"), 11.0108)

  expect_equal(attr(obs_1min[[1]], "Y"), 47.8009)

  expect_equal(attr(obs_1min[[1]], "Z"), 977)

  expect_equal(attr(obs_1min[[1]], "TZONE"), "UTC")

  expect_equal(attr(obs_1min[[1]], "PARAMETER"), NULL)

  expect_equal(attr(obs_1min[[1]], "TS_START"), structure(773043600, class = c("POSIXct", "POSIXt"), tzone = "UTC"))

  expect_equal(attr(obs_1min[[1]], "TS_END"), structure(1704063540, class = c("POSIXct", "POSIXt"), tzone = "UTC"))

  expect_equal(attr(obs_1min[[1]], "TS_TYPE"), "measurement")

  expect_equal(attr(obs_1min[[1]], "MEAS_INTERVALTYPE"), TRUE)

  expect_equal(attr(obs_1min[[1]], "MEAS_BLOCKING"), "left")

  expect_equal(attr(obs_1min[[1]], "MEAS_RESOLUTION"), 1)

  expect_equal(attr(obs_1min[[1]], "MEAS_UNIT"), NULL)

  expect_equal(attr(obs_1min[[1]], "MEAS_STATEMENT"), NULL)
})
