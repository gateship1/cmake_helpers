find_package(pybind11)
if (NOT pybind11_FOUND)

    message(STATUS "Cloning pybind11...")

    include(FetchContent)
    
    FetchContent_Declare(pybind11
        GIT_REPOSITORY https://github.com/pybind/pybind11.git
        GIT_TAG 3e9dfa2866941655c56877882565e7577de6fc7b) # v2.12
    
    FetchContent_GetProperties(pybind11)
    if(NOT pybind11_POPULATED)
        FetchContent_Populate(pybind11)
        add_subdirectory(${pybind11_SOURCE_DIR} ${pybind11_BINARY_DIR})
    endif(NOT pybind11_POPULATED)

endif (NOT pybind11_FOUND)
    
message(STATUS "pybind11 source directory: ${pybind11_SOURCE_DIR}")
message(STATUS "pybind11 binary directory: ${pybind11_BINARY_DIR}")
