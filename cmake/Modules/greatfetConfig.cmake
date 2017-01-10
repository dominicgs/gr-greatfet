INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_GREATFET greatfet)

FIND_PATH(
    GREATFET_INCLUDE_DIRS
    NAMES greatfet/api.h
    HINTS $ENV{GREATFET_DIR}/include
        ${PC_GREATFET_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    GREATFET_LIBRARIES
    NAMES gnuradio-greatfet
    HINTS $ENV{GREATFET_DIR}/lib
        ${PC_GREATFET_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GREATFET DEFAULT_MSG GREATFET_LIBRARIES GREATFET_INCLUDE_DIRS)
MARK_AS_ADVANCED(GREATFET_LIBRARIES GREATFET_INCLUDE_DIRS)

