# cmaker

Port of [cmake](http://www.cmake.org/) to R.

Provides the R package developer access to cmake functionality in order to assist multi-platform package development.  The primary function that the developer will use is a Rscript call to `cmake()` within a `configure` script.  The package is currently hosted at [stnava/cmaker](https://github.com/stnava/cmaker).

[![Build Status](https://travis-ci.org/stnava/cmaker.png?branch=master)](https://travis-ci.org/stnava/cmaker)

* only build cmake - not ctest or cpack

* directory booty is a name change from cmake source

* small changes to root CMakeLists.txt and Source/CMakeLists.txt

* primarily - remove testing from cmake and also the testing source code
