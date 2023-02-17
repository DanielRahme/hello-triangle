include(FetchContent)

FetchContent_Declare(
  filamentrepo
  GIT_REPOSITORY https://github.com/google/filament.git
  GIT_TAG release
)

FetchContent_MakeAvailable(filamentrepo)

FetchContent_GetProperties(filamentrepo)
include(CMakePrintHelpers)
cmake_print_variables(filamentrepo_SOURCE_DIR)
cmake_print_variables(filamentrepo_BINARY_DIR)
cmake_print_variables(filamentrepo_POPULATED)

### Add generated resources headers
#FetchContent_GetProperties(filamentrepo)
#
#add_library(filamentrepo_resources UNKNOWN IMPORTED)
#set_property(TARGET filament_resources 
#PROPERTY 
#IMPORTED_LOCATION ${filament-samples_BINARY_DIR}/samples/generated/resources
#)
#add_dependencies(filament_resources filament-samples)


## Add add_library
#add_library(filament_resources STATIC IMPORTED)
#target_include_directories(filament_resources
#  $<BUILD_INTERFACE:${filament-samples_BINARY_DIR}/samples/generated/resources/resources.h>
#  $<INSTALL_INTERFACE:include>  # <prefix>/include/mylib
#)
#add_dependencies(filament_resources filament filament-samples)


add_library(filament_resources INTERFACE)
target_include_directories( filament_resources INTERFACE 
    "$<BUILD_INTERFACE:${filamentrepo_BINARY_DIR}/samples/generated/resources>"
    "$<INSTALL_INTERFACE:${filamentrepo_BINARY_DIR}/samples/generated/resources>")

target_link_libraries(filament_resources INTERFACE filament-samples)
add_dependencies(filament_resources filamentrepo filament-samples)
