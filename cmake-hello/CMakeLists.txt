PROJECT (HELLO)

SET(SRC_LIST hello.cpp)

MESSAGE(STATUS "this is BINARY dir" ${HELLO_BINDARY_DIR})
MESSAGE(STATUS "this is SOURCE dir" ${HELLO_SOURCE_DIR})
MESSAGE(STATUS "this is PRPOJECT_SOURCE" ${PRPOJECT_SOURCE_DIR})

ADD_EXECUTABLE(hello.out ${SRC_LIST})