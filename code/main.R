library(argparse)
devtools::load_all("/code/hello")

# parse CLI arguments
parser <- ArgumentParser(description = "demo capsule")
parser$add_argument(
  "--name",
  type = "character",
  required = FALSE,
  default = "world"
)
args <- parser$parse_args()

hello_message(args$name)
message("hello version: ", packageVersion("hello"))
