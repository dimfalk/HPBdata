test_that("Class is unchanged.", {

  expect_equal(class(obs_1d), "list")

  expect_s3_class(obs_1d[[1]], c("xts", "zoo"))
})

test_that("Dimensions are unchanged.", {

  expect_equal(length(obs_1d), 13)

  expect_equal(length(obs_1d[[1]]), 88753)
})

test_that("Names are unchanged.", {

  cnames <- c("FX", "FM", "RSK", "SDK", "SHK_TAG", "NM", "VPM", "PM", "TMK",
              "UPM", "TXK", "TNK", "TGK")

  expect_equal(names(obs_1d), cnames)

  expect_equal(names(obs_1d[[1]]), "FX")
})

test_that("Types are unchanged.", {

  expect_equal(typeof(obs_1d), "list")

  expect_equal(typeof(obs_1d[[1]]), "double")
})

test_that("Checksum is unchanged.", {

  expect_equal(sum(obs_1d[[1]], na.rm = TRUE), 341110.2)

  expect_equal(is.na(obs_1d[[1]]) |> sum(), 62190)
})

test_that("Time range is unchanged.", {

  rng <- zoo::index(obs_1d[[1]]) |> range()

  expect_equal(class(rng), c("POSIXct", "POSIXt"))

  expect_equal(as.character(rng[1]), "1781-01-01")

  expect_equal(as.character(rng[2]), "2023-12-31")
})

test_that("Attributes are unchanged.", {

  expect_equal(attr(obs_1d[[1]], "STAT_ID"), "02290")

  expect_equal(attr(obs_1d[[1]], "STAT_NAME"), "Hohenpeißenberg")

  expect_equal(attr(obs_1d[[1]], "X"), 11.0108)

  expect_equal(attr(obs_1d[[1]], "Y"), 47.8009)

  expect_equal(attr(obs_1d[[1]], "Z"), 977)

  expect_equal(attr(obs_1d[[1]], "TZONE"), "UTC")

  expect_equal(attr(obs_1d[[1]], "PARAMETER"), "Windgeschwindigkeit")

  expect_equal(attr(obs_1d[[1]], "TS_START"), structure(-5964192000, class = c("POSIXct", "POSIXt"), tzone = "UTC"))

  expect_equal(attr(obs_1d[[1]], "TS_END"), structure(1703980800, class = c("POSIXct", "POSIXt"), tzone = "UTC"))

  expect_equal(attr(obs_1d[[1]], "TS_TYPE"), "measurement")

  expect_equal(attr(obs_1d[[1]], "MEAS_INTERVALTYPE"), TRUE)

  expect_equal(attr(obs_1d[[1]], "MEAS_BLOCKING"), "left")

  expect_equal(attr(obs_1d[[1]], "MEAS_RESOLUTION"), 1440)

  expect_equal(attr(obs_1d[[1]], "MEAS_UNIT"), "m s-1")

  expect_equal(attr(obs_1d[[1]], "MEAS_STATEMENT"), "max")
})
