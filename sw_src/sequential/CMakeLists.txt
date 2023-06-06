project(sequential)
#include_directories(../include)

add_executable(pr-seq pagerank_sequential.c)
target_link_libraries(pr-seq)
