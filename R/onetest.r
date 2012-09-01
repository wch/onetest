#' @export
one_test <- function(){
  x <- as.POSIXct(Sys.time())
  cat("new[one_const] ", x[one_const], "\n")
  cat("new[one_fun()] ", x[one_fun()], "\n")
  cat("new[one_s3()]  ", x[one_s3()],  "\n")
  invisible()
}

#' @export
one_const <- 1

#' @export
one_fun <- function(x)  1


#' @export
one_s3 <- function(x)  UseMethod("one_s3")
#' @S3method one_s3 default
one_s3.default <- function(x)  1


