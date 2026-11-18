add_library(w2p_warnings INTERFACE)

target_compile_options(
  w2p_warnings
  INTERFACE
    "$<$<C_COMPILER_ID:GNU,Clang,AppleClang>:-Wall;-Wextra;-Wpedantic;-Wshadow;-Wstrict-prototypes;-Wmissing-prototypes>"
)

if(W2P_WARNINGS_AS_ERRORS)

  target_compile_options(
    w2p_warnings INTERFACE "$<$<C_COMPILER_ID:GNU,Clang,AppleClang>:-Werror>")

endif()
