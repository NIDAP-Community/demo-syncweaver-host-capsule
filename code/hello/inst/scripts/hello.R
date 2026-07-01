args <- commandArgs(trailingOnly = TRUE)
x <- args[[1]]
if (require(hello)) {
  hello::hello_message(x)
}
