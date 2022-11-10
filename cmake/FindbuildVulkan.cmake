include(FetchContent)

FetchContent_Declare(
  vulkan_tools
  GIT_REPOSITORY https://github.com/KhronosGroup/Vulkan-Tools.git
)


FetchContent_Declare(
  vulkan_validation_layers
  GIT_REPOSITORY https://github.com/KhronosGroup/Vulkan-ValidationLayers.git

)

FetchContent_Declare(
  vulkan_loader
  GIT_REPOSITORY https://github.com/KhronosGroup/Vulkan-Loader.git
)

#FetchContent_MakeAvailable(vulkan_tools)
#FetchContent_MakeAvailable(vulkan_tools vulkan_validation_layers vulkan_loader)
