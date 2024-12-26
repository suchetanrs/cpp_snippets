#
# A simple macro that executes the installed original_exe.
#
macro(run_original_exe)
    # Use get_target_property to retrieve the full path to the original_exe
    get_target_property(_original_exe_path OriginalPackage::original_exe LOCATION)
    
    if(NOT _original_exe_path)
        message(FATAL_ERROR "Could not find OriginalPackage::original_exe target!")
    endif()

    message(STATUS "Running original_exe from OriginalPackage...")

    execute_process(
        COMMAND "${_original_exe_path}" ${ARGV}
        WORKING_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}"
        RESULT_VARIABLE _ret
    )

    if(_ret)
        message(FATAL_ERROR "original_exe failed with return code ${_ret}")
    endif()
endmacro()
