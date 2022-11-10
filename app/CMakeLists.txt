# Add the executable target

set(cpp_flags
        -O3
        -Wall
        -Wextra
        -Wpedantic
        -fdata-sections
        -ffunction-sections
        -flto
        )

function (create_app app_name)
    add_executable(${app_name} ${PROJECT_SOURCE_DIR}/app/${app_name}.cpp)
    target_compile_features(${app_name} PRIVATE cxx_std_20)
    target_link_options(${app_name} PRIVATE -Wl,--gc-sections)
    target_compile_options(${app_name} PRIVATE ${cpp_flags})
endfunction()


create_app(triangle_gles)
target_link_libraries(triangle_gles PRIVATE lib glad glfw)

create_app(triangle_vulkan)
target_link_libraries(triangle_vulkan PRIVATE lib glad glfw)

