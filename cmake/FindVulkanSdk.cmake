include(ExternalProject)

include(CMakePrintHelpers)

set(vulkan_sdk_tarball_src_dir ${PROJECT_BINARY_DIR}/vulkan_sdk_dir)
set(vulkan_sdk_tarball_url "https://sdk.lunarg.com/sdk/download/1.3.239.0/linux/vulkansdk-linux-x86_64-1.3.239.0.tar.gz")
set(vulkan_sdk_tarball_hash "1ac4e3b23f27570535026506fd9fcaf5ed56f8562c87cdd60afe7adf58b037e8")
set(vulkan_sdk_tarball_filename "vulkansdk-linux-x86_64-1.3.239.0.tar.gz")

cmake_policy(SET CMP0135 NEW)

ExternalProject_Add(vulkan_sdk_prj

    URL ${vulkan_sdk_tarball_url}
    URL_HASH SHA256=${vulkan_sdk_tarball_hash}

    SOURCE_DIR ${vulkan_sdk_tarball_src_dir}
    CONFIGURE_COMMAND cmake -E echo "skipping configure step"
    ##CONFIGURE_COMMAND ${CMAKE_COMMAND} -E tar xzvf ${vulkan_sdk_tarball_src_dir}/${vulkan_sdk_tarball_filename}
    BUILD_COMMAND ${CMAKE_COMMAND} -E echo "Skipping build step."
    INSTALL_COMMAND cmake -E echo "Skipping install step."
)
ExternalProject_Get_Property(vulkan_sdk_prj BINARY_DIR)

##add_dependencies(vulkan_sdk vulkan_sdk_prj)

cmake_print_variables(${BINARY_DIR})
