LOCAL_PATH := $(call my-dir)

commonSrcFiles := \
  standalone/HelloWorldData.cpp \
  standalone/HelloWorldDataDcps_impl.cpp \
  standalone/HelloWorldDataDcps.cpp \
  standalone/HelloWorldDataSplDcps.cpp

# sacpp_helloworld_pub
#=======================================
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := sacpp_helloworld_pub
LOCAL_SRC_FILES := \
  $(commonSrcFiles) \
  src/HelloWorldDataPublisher.cpp \
  src/CheckStatus.cpp \
  src/DDSEntityManager.cpp
LOCAL_C_INCLUDES := \
  $(LOCAL_PATH)/standalone \
  $(LOCAL_PATH)/../../../../src/abstraction/os/include \
  $(LOCAL_PATH)/../../../../src/api/dcps/c++/common/include \
  $(LOCAL_PATH)/../../../../src/api/dcps/c++/sacpp/include \
  $(LOCAL_PATH)/../../../../src/api/dcps/c++/sacpp/bld/x86_64.linux-release \
  $(LOCAL_PATH)/../../../../src/database/database/include \
  $(LOCAL_PATH)/../../../../src/user/include \
  $(LOCAL_PATH)/../../../../src/kernel/include \
  $(LOCAL_PATH)/../../../../src/osplcore/bld/x86_64.linux-release \
  $(LOCAL_PATH)/../../../include

LOCAL_CPPFLAGS := -Wall -Wno-unused-function
LOCAL_RTTI_FLAG := -frtti
LOCAL_SHARED_LIBRARIES := \
  libdcpssacpp \
  libddskernel

include $(BUILD_EXECUTABLE)

# sacpp_helloworld_sub
#=======================================
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := sacpp_helloworld_sub
LOCAL_SRC_FILES := \
  $(commonSrcFiles) \
  src/HelloWorldDataSubscriber.cpp \
  src/CheckStatus.cpp \
  src/DDSEntityManager.cpp
LOCAL_C_INCLUDES := \
  $(LOCAL_PATH)/standalone \
  $(LOCAL_PATH)/../../../../src/abstraction/os/include \
  $(LOCAL_PATH)/../../../../src/api/dcps/c++/common/include \
  $(LOCAL_PATH)/../../../../src/api/dcps/c++/sacpp/include \
  $(LOCAL_PATH)/../../../../src/api/dcps/c++/sacpp/bld/x86_64.linux-release \
  $(LOCAL_PATH)/../../../../src/database/database/include \
  $(LOCAL_PATH)/../../../../src/user/include \
  $(LOCAL_PATH)/../../../../src/kernel/include \
  $(LOCAL_PATH)/../../../../src/osplcore/bld/x86_64.linux-release \
  $(LOCAL_PATH)/../../../include

LOCAL_CPPFLAGS := -Wall -Wno-unused-function
LOCAL_RTTI_FLAG := -frtti
LOCAL_SHARED_LIBRARIES := \
  libdcpssacpp \
  libddskernel

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_CLANG := true
LOCAL_MODULE := dlopen
LOCAL_SRC_FILES := \
  dlopen.cpp
LOCAL_CPPFLAGS := -Wall -Wno-unused-function
include $(BUILD_EXECUTABLE)
