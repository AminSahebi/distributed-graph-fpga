project(grid)
#set(CMAKE_C_STANDARD 11)

set(CMAKE_C_COMPILER g++)
include_directories(.)

#add_compile_options(-DCILK -fcilkplus -O2 -fms-extensions -ggdb3)
add_compile_options(-DOPENMP -fopenmp -O2 -fms-extensions -ggdb3)

add_executable(pr-grid main.c utils.c partition.c pr-grid.c)

#target_link_libraries(prgrid_cilk cilkrts m pthread)
target_link_libraries(pr-grid gomp m pthread)
