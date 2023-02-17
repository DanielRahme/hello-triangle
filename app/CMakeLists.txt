# Add the executable target
set(cpp_flags
        -O3
        -Wextra
        -Wpedantic
        -stdlib=libc++
        -lc++abi
        -fdata-sections
        -ffunction-sections
        -flto
        )

set(common_libraries
    pthread
    c++
    dl
    lib
    glad
    glfw
    glm
    filament
    backend
    bluegl
    bluevk
    filabridge
    filaflat
    utils
    geometry
    smol-v
    vkshaders
    ibl
    #sample-resources
    filamentapp
    #filamentapp-resources
    sample-resources
    sample
    filament_resources
)


function (create_app app_name)
    add_executable(${app_name} ${PROJECT_SOURCE_DIR}/app/${app_name}.cpp)
    target_compile_features(${app_name} PRIVATE cxx_std_20)
    #target_link_options(${app_name} PRIVATE -Wl,--gc-sections)
    target_compile_options(${app_name} PRIVATE ${cpp_flags})
    target_link_libraries(${app_name} PUBLIC ${common_libraries})
    #set_target_properties(${app_name} PROPERTIES FOLDER Samples)
    #target_include_directories(${app_name} PUBLIC filament_resources)
endfunction()

#create_app(triangle_gles)
#create_app(triangle_vulkan)
#create_app(triangle_vk)
create_app(hello_triangle)
