include(FetchContent)

FetchContent_Declare(
  glslang
  GIT_REPOSITORY https://github.com/KhronosGroup/glslang.git
  GIT_TAG main
)

FetchContent_MakeAvailable(glslang)
