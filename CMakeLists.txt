# Top-level CMake file
cmake_minimum_required(VERSION 3.14.0)

# The project name, version and languages
project(Hello 
    VERSION 1.0 
    LANGUAGES CXX
    )


### CMake modules path in folder cmake/. Enable find_package
list(APPEND CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")

### Packages
find_package(VulkanHeaders)
find_package(doctest)
find_package(glad)
find_package(glfw)
find_package(glm)
find_package(googletest)
find_package(glslang)
find_package(spirv)
find_package(glslc)
#find_package(buildVulkan)

# Add the CMakeFiles in the other directories
add_subdirectory(src)
add_subdirectory(app)

### Enable testing
if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
    include(CTest)

    if(BUILD_TESTING)
        add_subdirectory(test)
    endif()
endif()
