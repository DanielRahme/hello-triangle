include(FetchContent)

FetchContent_Declare(
  vulkan_headers
  GIT_REPOSITORY https://github.com/KhronosGroup/Vulkan-Headers.git
  GIT_TAG main
)
FetchContent_MakeAvailable(vulkan_headers)
