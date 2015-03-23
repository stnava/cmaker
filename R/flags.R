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
  CMAKElocation<-paste( system.file("cmake",
    package="cmaker"),"/bin/cmake", sep="")
  if ( ! file.exists(CMAKElocation) )
    print("cmake does not exist")
  cat( CMAKElocation )
  return(CMAKElocation)
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
  "3.2.2"
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
  "c95e523db87cd503c97ca2a6021614393bb33e0b"
}
