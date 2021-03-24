if(${USE_LIB_LOGGING})
    set(LIB_LOGGING_FLAGS "-Os")

    set(LIB_LOGGING_C_SOURCES
        "${LIB_LOGGING_DIR}/lib_logging/src/debug_printf.c"
    )
    set(LIB_LOGGING_XC_SOURCES "")
    set(LIB_LOGGING_ASM_SOURCES "")

    set(LIB_LOGGING_SOURCES
        ${LIB_LOGGING_XC_SOURCES}
        ${LIB_LOGGING_C_SOURCES}
        ${LIB_LOGGING_ASM_SOURCES}
    )

    set_source_files_properties(${LIB_LOGGING_SOURCES} PROPERTIES COMPILE_FLAGS ${LIB_LOGGING_FLAGS})

    set(LIB_LOGGING_INCLUDES
        "${LIB_LOGGING_DIR}/lib_logging/api"
    )

    message(STATUS "Adding LIB_LOGGING")
endif()
