#' Title
#'
#' @param language
#'
#' @returns cadena de caracteres con la hora
#' @export
#'
#' @examples
#' what_time()
#' what_time("en")
what_time <- function(language = "es") {

  rlang::arg_match0(language, c("es", "en"))

  time <- format(Sys.time(), "%H:%M")

  exclamation <- praise::praise("${Exclamation}")

  switch(
    language,
    es = sprintf("%s! Son las %s!", exclamation, time),
    en = sprintf("%s! It is %s now!", exclamation, time)
  )
}

