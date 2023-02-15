# Add the executable target

set(cpp_flags
        -O3
        -Wextra
        -Wpedantic
        -stdlib=libc++
        #-fdata-sections
        #-ffunction-sections
        #-flto
        )

function (create_app app_name)
    add_executable(${app_name} ${PROJECT_SOURCE_DIR}/app/${app_name}.cpp)
    target_compile_features(${app_name} PRIVATE cxx_std_20)
    #target_link_options(${app_name} PRIVATE -Wl,--gc-sections)
    target_compile_options(${app_name} PRIVATE ${cpp_flags})
endfunction()


create_app(triangle_gles)
target_link_libraries(triangle_gles PRIVATE lib glad glfw)
#target_include_directories(triangle_vulkan PUBLIC ${vulkan_headers_SOURCE_DIR}/include)
#target_link_libraries(triangle_vulkan PUBLIC lib glad glfw glm vulkan_headers dl pthread X11 Xrandr Xi Xxf86vm)
set(vulkan_libraries
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
    vulkan_headers
)


create_app(triangle_vulkan)
target_link_libraries(triangle_vulkan PUBLIC ${vulkan_libraries})

create_app(triangle_vk)
target_link_libraries(triangle_vk PUBLIC ${vulkan_libraries})
