enable_language(C)

add_executable(mainexeUnknownImportedGlobal IMPORTED GLOBAL)
add_library(mainlibUnknownImportedGlobal UNKNOWN IMPORTED GLOBAL)
add_library(mainlib empty.c)

add_subdirectory(SubDirImportedTarget)

target_link_libraries(subexeUnknownImportedGlobal INTERFACE mainlib)
target_link_libraries(subexeUnknownImportedGlobal INTERFACE sublib)
get_property(subexeUnknownImportedGlobal_libs TARGET subexeUnknownImportedGlobal PROPERTY INTERFACE_LINK_LIBRARIES)
message(STATUS "subexeUnknownImportedGlobal: ${subexeUnknownImportedGlobal_libs}")

target_link_libraries(sublibUnknownImportedGlobal INTERFACE mainlib)
target_link_libraries(sublibUnknownImportedGlobal INTERFACE sublib)
get_property(sublibUnknownImportedGlobal_libs TARGET sublibUnknownImportedGlobal PROPERTY INTERFACE_LINK_LIBRARIES)
message(STATUS "sublibUnknownImportedGlobal: ${sublibUnknownImportedGlobal_libs}")
