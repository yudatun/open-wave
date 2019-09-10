LOCAL_PATH := $(call my-dir)

common_cflags := \
  -D_GNU_SOURCE \
  -DOSPL_LINUX \
  -D_TYPECHECK_ \
  -DE_DEBUG \
  -Wall -W -Wno-long-long \
  -Wno-variadic-macros  \
  -D_POSIX_PTHREAD_SEMANTICS \
  -D_REENTRANT \
  -DDO_HOST_BY_NAME \
  -fPIC -Wconversion \
  -DOSPL_VERSION="6.9.190705OSS" \
  -DOS_SHAREDMEM_FILE_DISABLE \
  -DOS_SHAREDMEM_SEG_DISABLE \

common_includes := \
  $(LOCAL_PATH)/api/dcps/common/include \
  $(LOCAL_PATH)/abstraction/os/include \
  $(LOCAL_PATH)/abstraction/os/linux \
  $(LOCAL_PATH)/abstraction/os-net/include \
  $(LOCAL_PATH)/abstraction/os-net/linux \
  $(LOCAL_PATH)/configuration/config/include \
  $(LOCAL_PATH)/configuration/parser/include \
  $(LOCAL_PATH)/configuration/validator/include \
  $(LOCAL_PATH)/database/database/code \
  $(LOCAL_PATH)/database/database/include \
  $(LOCAL_PATH)/database/odlpp/code \
  $(LOCAL_PATH)/database/serialization/include \
  $(LOCAL_PATH)/kernel/include \
  $(LOCAL_PATH)/user/include \
  $(LOCAL_PATH)/utilities/include \
  $(LOCAL_PATH)/../external/snappy-c/src \
  $(LOCAL_PATH)/osplcore/bld/x86_64.linux-release

include $(LOCAL_PATH)/file_lists.mk

# libddshts
#=======================================
ifeq (x, y)
include $(CLEAR_VARS)

LOCAL_MODULE := libddshts
LOCAL_SRC_FILES := \
  $(abstraction_os_src_files) \
  $(abstraction_os_net_src_files) \
  $(utilities_src_files) \
  $(database_database_src_files) \
  $(database_serialization_src_files)
LOCAL_SRC_FILES_linux := \
  $(abstraction_os_linux_src_files)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := \
  -std=c99 \
  $(common_cflags)
LOCAL_LDLIBS := -ldl
LOCAL_MODULE_HOST_OS := linux

include $(BUILD_HOST_SHARED_LIBRARY)
endif

#=======================================
# TARGET BUILD
#=======================================

#=======================================
# Shared Library: libddskernel
#=======================================
include $(CLEAR_VARS)

LOCAL_MODULE := libddskernel
LOCAL_SRC_FILES := \
  $(abstraction_os_src_files) \
  $(abstraction_os_net_src_files) \
  $(abstraction_os_linux_src_files) \
  $(utilities_src_files) \
  $(database_database_src_files) \
  $(database_serialization_src_files) \
  $(configuration_config_src_files) \
  $(configuration_parser_src_files) \
  $(configuration_validator_src_files) \
  $(kernel_src_files) \
  $(user_src_files) \
  $(api_dcps_common_src_files) \
  $(osplcore_bld_x86_64.linux-release_src_files)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := \
  -std=c99 \
  $(common_cflags) \
  -DCONFIG_SYNTAX_FILE_NAME="\"/system/etc/ospl_metaconfig.xml\""

include $(BUILD_SHARED_LIBRARY)

# Static Library: libddskernel
#=======================================
include $(CLEAR_VARS)

LOCAL_MODULE := libddskernel
LOCAL_SRC_FILES := \
  $(abstraction_os_src_files) \
  $(abstraction_os_net_src_files) \
  $(abstraction_os_linux_src_files) \
  $(utilities_src_files) \
  $(database_database_src_files) \
  $(database_serialization_src_files) \
  $(configuration_config_src_files) \
  $(configuration_parser_src_files) \
  $(configuration_validator_src_files) \
  $(kernel_src_files) \
  $(user_src_files) \
  $(api_dcps_common_src_files) \
  $(osplcore_bld_x86_64.linux-release_src_files)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := \
  -std=c99 \
  $(common_cflags) \
  -DCONFIG_SYNTAX_FILE_NAME="\"/system/etc/ospl_metaconfig.xml\""

include $(BUILD_STATIC_LIBRARY)


#=======================================
# Shared Library: libdcpssacpp
#=======================================
include $(CLEAR_VARS)

LOCAL_MODULE := libdcpssacpp
LOCAL_SRC_FILES := \
  $(api_dcps_c++_common_src_files) \
  $(api_dcps_c++_sacpp_src_files) \
  $(gen_api_dcps_c++_sacpp_bld_x86_64.linux-release_src_files)
LOCAL_C_INCLUDES := \
  $(common_includes) \
  $(LOCAL_PATH)/api/dcps/c++/sacpp/include \
  $(LOCAL_PATH)/api/dcps/c++/common/include \
  $(LOCAL_PATH)/api/dcps/c++/sacpp/bld/x86_64.linux-release
LOCAL_CPPFLAGS := $(common_cflags)
LOCAL_RTTI_FLAG := -frtti
LOCAL_SHARED_LIBRARIES := libddskernel

include $(BUILD_SHARED_LIBRARY)

# Static Library: libdcpssacpp
#=======================================
include $(CLEAR_VARS)

LOCAL_MODULE := libdcpssacpp
LOCAL_SRC_FILES := \
  $(api_dcps_c++_common_src_files) \
  $(api_dcps_c++_sacpp_src_files) \
  $(gen_api_dcps_c++_sacpp_bld_x86_64.linux-release_src_files)
LOCAL_C_INCLUDES := \
  $(common_includes) \
  $(LOCAL_PATH)/api/dcps/c++/sacpp/include \
  $(LOCAL_PATH)/api/dcps/c++/common/include \
  $(LOCAL_PATH)/api/dcps/c++/sacpp/bld/x86_64.linux-release
LOCAL_CPPFLAGS := $(common_cflags)
LOCAL_RTTI_FLAG := -frtti
LOCAL_STATIC_LIBRARIES := libddskernel

include $(BUILD_STATIC_LIBRARY)

#=======================================
# Shared Library: libspliced
#=======================================
include $(CLEAR_VARS)

LOCAL_MODULE := libspliced
LOCAL_SRC_FILES := \
  $(services_spliced_src_files) \
  $(services_spliced_bld_x86_64.linux-release_src_files)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := \
  -std=c99 \
  $(common_cflags)
LOCAL_SHARED_LIBRARIES := libddskernel

include $(BUILD_SHARED_LIBRARY)

#=======================================
# Shared Library: libdurability
#=======================================
include $(CLEAR_VARS)

LOCAL_MODULE := libdurability
LOCAL_SRC_FILES := \
  $(services_durability_src_files) \
  $(services_durability_bld_x86_64.linux-release_src_files)
LOCAL_C_INCLUDES := \
  $(common_includes) \
  $(LOCAL_PATH)/services/durability/code \
  $(LOCAL_PATH)/services/durability/include \
  $(LOCAL_PATH)/services/durability/bld/x86_64.linux-release
LOCAL_CFLAGS := \
  -std=c99 \
  $(common_cflags)
LOCAL_SHARED_LIBRARIES := libddskernel

include $(BUILD_SHARED_LIBRARY)


#=======================================
# Shared Library: libddsi2
#=======================================
include $(CLEAR_VARS)

LOCAL_MODULE := libddsi2
LOCAL_SRC_FILES := \
  $(services_ddsi2_src_files) \
  $(services_ddsi2_bld_x86_64.linux-release_src_files)
LOCAL_C_INCLUDES := \
  $(common_includes) \
  $(LOCAL_PATH)/services/ddsi2/code \
  $(LOCAL_PATH)/services/ddsi2/bld/x86_64.linux-release
LOCAL_CFLAGS := \
  -std=c99 \
  $(common_cflags)
LOCAL_SHARED_LIBRARIES := libddskernel

include $(BUILD_SHARED_LIBRARY)
