cmake_minimum_required(VERSION 3.10)
project(DependentPackage)

# Make sure CMake can find the OriginalPackage config in /path/to/install
# If necessary, set CMAKE_PREFIX_PATH or use -DCMAKE_PREFIX_PATH=/path/to/install
# when invoking CMake for this project.

find_package(OriginalPackage REQUIRED)

# Now we can call the macro that was defined in OriginalPackageMacros.cmake
run_original_exe("foo" "bar")

# You can define your own targets or additional logic here...