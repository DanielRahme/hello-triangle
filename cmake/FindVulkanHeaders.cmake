include(FetchContent)

FetchContent_Declare(
  vulkan_headers
  GIT_REPOSITORY https://github.com/KhronosGroup/Vulkan-Headers.git
)

FetchContent_Declare(
  vulkan_hpp
  GIT_REPOSITORY https://github.com/KhronosGroup/Vulkan-Hpp.git
)

FetchContent_MakeAvailable(vulkan_headers vulkan_hpp)
