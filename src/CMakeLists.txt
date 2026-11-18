add_library(wire2parquet STATIC w2p_version.c)

target_include_directories(wire2parquet PUBLIC ${PROJECT_SOURCE_DIR}/include)
target_compile_features(wire2parquet PUBLIC c_std_17)
set_target_properties(
  wire2parquet
  PROPERTIES C_EXTENSIONS OFF
             C_STANDARD 17
             C_STANDARD_REQUIRED ON)

target_link_libraries(wire2parquet PRIVATE w2p_warnings)
