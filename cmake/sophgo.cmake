CMAKE_MINIMUM_REQUIRED (VERSION 3.10)

find_package(libsophon REQUIRED)
message(${LIBSOPHON_LIB_DIRS})
include_directories(${LIBSOPHON_INCLUDE_DIRS})

set(SOPHGO_RT_LIB ${LIBSOPHON_LIB_DIRS}/libbmrt.so)
# use ffmpeg
set(FFMPEG_DIR  /opt/sophon/sophon-ffmpeg-latest/lib/cmake)
find_package(FFMPEG REQUIRED)
include_directories(${FFMPEG_INCLUDE_DIRS})
link_directories(${FFMPEG_LIB_DIRS})

link_directories(${LIBSOPHON_LIB_DIRS})
set(BM_LIBS bmlib bmrt bmcv yuv)
set(JPU_LIBS bmjpuapi bmjpulite)
list(APPEND DEPEND_LIBS bmjpuapi bmjpulite)
list(APPEND DEPEND_LIBS bmlib bmrt bmcv yuv)
