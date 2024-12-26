cmake_minimum_required(VERSION 3.10)
project(OriginalPackage)

# Create the executable
add_executable(original_exe main.cpp)

#
# Export and install the target so it can be found by other projects
#
install(
     TARGETS original_exe
     EXPORT OriginalPackageTargets
     RUNTIME DESTINATION bin
)

# Export information about this target into a CMake file
install(EXPORT OriginalPackageTargets
    FILE OriginalPackageTargets.cmake
    NAMESPACE OriginalPackage::
    DESTINATION lib/cmake/OriginalPackage
)

#
# Prepare and install a "Config" file so that find_package(OriginalPackage)
# works from other projects
#
include(CMakePackageConfigHelpers)

# This file includes the macros file and references the exported targets
configure_package_config_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/OriginalPackageConfig.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/OriginalPackageConfig.cmake
    INSTALL_DESTINATION lib/cmake/OriginalPackage
)

install(
    FILES
        ${CMAKE_CURRENT_BINARY_DIR}/OriginalPackageConfig.cmake
        ${CMAKE_CURRENT_SOURCE_DIR}/OriginalPackageMacros.cmake
    DESTINATION lib/cmake/OriginalPackage
)
