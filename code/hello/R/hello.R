#' Generate a greeting
#'
#' @param x The name to greet.
#' @return A greeting message.
#' @export
hello_message <- function(x = "world") {
  message("hello ", x, "!")
}
