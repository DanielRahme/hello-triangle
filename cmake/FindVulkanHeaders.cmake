include(FetchContent)

FetchContent_Declare(
  vulkan_headers
  GIT_REPOSITORY https://github.com/KhronosGroup/Vulkan-Headers.git
  GIT_TAG main
)
FetchContent_MakeAvailable(vulkan_headers)

set(Vulkan_INCLUDE_DIR ${vulkan_headers_SOURCE_DIR}/include)
