cmake_minimum_required(VERSION 3.22)

project(wire2parquet LANGUAGES C)

option(W2P_WARNINGS_AS_ERRORS "Treat compiler warnings as errors (-Werror)" OFF)

include(cmake/Warnings.cmake)
add_subdirectory(src)
