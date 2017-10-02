#' return cmake binary location
#'
#' call this to get the cmake binary location to help you build an R package
#'
#' @author Avants BB
#' @examples
#'
#' cmake()
#'
#' @export cmake
cmake <- function() {
  os_type = .Platform$OS.type
  suff = switch(os_type,
                unix = "",
                windows = ".exe")
  CMAKElocation = system.file(
    "cmake", "bin", paste0("cmake", suff),
    package = "cmaker")
  if (!file.exists(CMAKElocation)) {
    message("cmake does not exist")
  }
  cat(CMAKElocation)
  return(CMAKElocation)
}


#' @rdname cmake
#' @export
cmake_path = function() {
  system.file(
    "cmake", "bin",
    package = "cmaker")
}

#' return cmake version information
#'
#' call this to get the installed cmake version
#'
#' @author Avants BB
#' @examples
#'
#' cmakeVersion()
#'
#' @export cmakeVersion
cmakeVersion <- function() {
  # should update this as versions change
  "3.9.3"
}

#' return cmake commit information
#'
#' call this to get the installed cmake commit
#' \url{https://github.com/Kitware/CMake/}
#'
#' @author Avants BB
#' @examples
#'
#' cmakeCommit()
#'
#'
#'
#' @export cmakeCommit
cmakeCommit <- function() {
  # should update this as versions change
  "7486607c874de3e44d33f152775fd073de2ba2c0"
}
