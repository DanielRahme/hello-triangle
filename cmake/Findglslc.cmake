include(FetchContent)

FetchContent_Declare(
  glslc
  GIT_REPOSITORY https://github.com/google/shaderc.git
  GIT_TAG main
)

FetchContent_MakeAvailable(glslc)

