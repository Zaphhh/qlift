# Qlift
Swift 6.0 API for Qt 6

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/Longhanks/qlift-swift-example/master/LICENSE)

This package provides two things:

 - A Swift package that wraps Qt 6 to a swiftier API.
 - An executable called `qlift-uic`, that can be used in a similiar fashion to Qt's uic: Provided with a file path, it compiles *.ui files to native Swift code.

## Building

Qt6 must be installed. On macOS, use `brew install qt`. On Linux, `pkgconfig` is used to find the build flags. On macOS, `.pc` files also is used to find Qt frameworks and build flags.


### swiftpm

`swift build`
