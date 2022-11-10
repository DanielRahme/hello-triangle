include(FetchContent)

FetchContent_Declare(
  glslang
  GIT_REPOSITORY https://github.com/KhronosGroup/glslang.git
  GIT_TAG master
)

FetchContent_MakeAvailable(glslang)
