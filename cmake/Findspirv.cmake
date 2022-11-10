include(FetchContent)

FetchContent_Declare(
  spirv_headers
  GIT_REPOSITORY https://github.com/KhronosGroup/SPIRV-Headers.git
  GIT_TAG master
)

FetchContent_Declare(
  spirv_tools
  GIT_REPOSITORY https://github.com/KhronosGroup/SPIRV-Tools.git
  GIT_TAG master
)
FetchContent_MakeAvailable(spirv_headers spirv_tools)
