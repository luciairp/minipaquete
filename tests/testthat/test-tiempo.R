test_that("funcionamiento de la función tiempo", {
  expect_type(what_time(), "character")
})

test_that("idioma inválido EN",{
  expect_snapshot(error = TRUE, what_time(language = "EN"))
})

