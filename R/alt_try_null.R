try_null <- function(u) {
  tryCatch(
    details::alt_parse(u),
    error = function(e) {
      NULL
    },
    finally = message(u)
  )
}
