#' @export
one_test <- function() {
  x <- as.POSIXct(Sys.time())
  cat("x:", as.character(x), " ", class(x), "\n")
  cat("x + one_const  ", x + one_const, "\n")
  cat("x + one_fun()  ", x + one_fun(), "\n")
  cat("x + one_s3()   ", x + one_s3(), "\n")
  cat("x[one_const]   ", x[one_const], "\n")
  cat("x[one_fun()]   ", x[one_fun()], "\n")
  cat("x[one_s3(0)]   ", x[one_s3(0)],  "\n")
  cat("x[[one_const]] ", x[[one_const]], "\n")
  cat("x[[one_fun()]] ", x[[one_fun()]], "\n")
  cat("x[[one_s3(0)]] ", x[[one_s3(0)]],  "\n")
  invisible()
}

#' @export
one_const <- 1

#' @export
one_fun <- function()  1


#' @export
one_s3 <- function(x)  UseMethod("one_s3")
#' @S3method one_s3 default
one_s3.default <- function(x)  1
