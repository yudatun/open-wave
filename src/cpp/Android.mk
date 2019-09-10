LOCAL_PATH := $(call my-dir)

libddscpp_src_files := \
  eval.c \
  line.c \
  expr.c \
  io.c \
  undef.c \
  define.c \
  error.c \
  autodef.c \
  at.c \
  include.c \
  while.c \
  pragma.c \
  unctrl.c \
  dump.c \
  debug.c \
  if.c \
  is.c \
  sharp.c \
  predefs.c \
  preprocess.c \
  symtbl.c \
  expand.c \
  accum.c \
  set.c \
  copyof.c

# libddscpp
#=======================================
include $(CLEAR_VARS)
LOCAL_CLANG := true
LOCAL_MODULE := libddscpp
LOCAL_SRC_FILES := $(addprefix code/, $(libddscpp_src_files))
LOCAL_C_INCLUDES := \
  $(LOCAL_PATH)/include \
  external/opensplice/src/abstraction/os/include
include $(BUILD_HOST_STATIC_LIBRARY)
