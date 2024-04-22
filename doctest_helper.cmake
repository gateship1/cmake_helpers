find_package(doctest)
if (NOT doctest_FOUND)

    message(STATUS "Cloning doctest...")

    include(FetchContent)
    
    FetchContent_Declare(doctest
        GIT_REPOSITORY https://github.com/doctest/doctest.git
        GIT_TAG ae7a13539fb71f270b87eb2e874fbac80bc8dda2 # v2.4.11
    )
    
    FetchContent_GetProperties(doctest)
    if(NOT doctest_POPULATED)
        FetchContent_Populate(doctest)
        add_subdirectory(${doctest_SOURCE_DIR} ${doctest_BINARY_DIR})
    endif(NOT doctest_POPULATED)

endif (NOT doctest_FOUND)
    
message(STATUS "doctest source directory: ${doctest_SOURCE_DIR}")
message(STATUS "doctest binary directory: ${doctest_BINARY_DIR}")
