LOCAL_PATH := $(call my-dir)

idlpp_src_files := \
  idl_base.c \
  idl_genCxxTypeBody.c \
  idl_genISOCxx2Copyout.c \
  idl_genSACSTypedClassDefs.c \
  idl_constSpecifier.c \
  idl_genSACSType.c \
  idl_map.c \
  idl_typeSpecifier.c \
  idl_genMetaHelper.c \
  idl_genSACPPType.c \
  idl_genSACSHelper.c \
  idl_genSacTypedClassDefs.c \
  idl_genLiteISOCxxCopyout.c \
  idl_genC99Copyout.c \
  idl_scope.c \
  idl_genSacType.c \
  idl_genSplHelper.c \
  idl_genLanguageHelper.c \
  idl_genCorbaCxxHelper.c \
  idl_genCxxTypedClassImpl.c \
  idl_genPython.c \
  idl_genIdlHelper.c \
  idl_dll.c \
  idl_genSACSSplDcps.c \
  idl_genISOCxxHeader.c \
  idl_genJavaHelper.c \
  idl_genISOCxx2Type.c \
  idl_stacDef.c \
  idl_genFaceISOCxx2Tmpl.c \
  idl_genISOCxx2Helper.c \
  idl_genISOCxx2Copyin.c \
  idl_genMatlab.c \
  idl_genSACPPTypeImpl.c \
  idl_genFileHelper.c \
  idl_genIdl.c \
  idl_genISOCxx2Header.c \
  idl_dependencies.c \
  idl_genCxxTypedInterfaces.c \
  idl_genCorbaCHelper.c \
  idl_genSACPPTypedClassImpl.c \
  idl_main.c \
  idl_genC99Type.c \
  idl_genCorbaJavaHelper.c \
  idl_genCorbaCCopyout.c \
  idl_genCorbaCxxStreamsCcpp.c \
  idl_genCxxTypedClassDefs.c \
  idl_genCxxHelper.c \
  idl_genC99Tmpl.c \
  idl_genSimulinkHelper.c \
  idl_genCxxType.c \
  idl_genLiteCxxCopyin.c \
  idl_genCxxStreamsDefs.c \
  idl_genPythonDescriptors.c \
  idl_genLiteCxxCopyout.c \
  idl_genLabview.c \
  idl_genSpliceDep.c \
  idl_parser.c \
  idl_genPythonHelper.c \
  idl_keyDef.c \
  idl_sematicRules.c \
  idl_genSacHelper.c \
  idl_genCorbaCCopyin.c \
  idl_genSpliceLiteType.c \
  idl_genSacObjectControl.c \
  idl_genSACPPTypedClassDefs.c \
  idl_databaseValidation.c \
  idl_genCHelper.c \
  idl_genSpliceType.c \
  idl_genCxxStreamsIdl.c \
  idl_genSajType.c \
  idl_unsupported.c \
  idl_genTypeDescriptors.c \
  idl_genCorbaCxxCcpp.c \
  idl_genCorbaCxxCopyout.c \
  idl_genSpliceLoad.c \
  idl_genSacTypedClassImpl.c \
  idl_genSajTypedClass.c \
  idl_genSajHolder.c \
  idl_genFaceJava.c \
  idl_genISOCxx2SpliceType.c \
  idl_genLiteHelper.c \
  idl_genSimulink.c \
  idl_genCxxStreamsImpl.c \
  idl_walk.c \
  idl_genMatlabHelper.c \
  idl_registerType.c \
  idl_genLiteISOCxxCopyin.c \
  idl_catsDef.c \
  idl_fileMap.c \
  idl_streamsDef.c \
  idl_genC99Helper.c \
  idl_genTypeSize.c \
  idl_genSacMeta.c \
  idl_tmplExp.c \
  idl_genCorbaCxxCopyin.c \
  idl_genSajMeta.c

idlpp_cflags := \
  -std=c99 \
  -D_GNU_SOURCE \
  -DOSPL_LINUX \
  -O0 -g \
  -D_TYPECHECK_ \
  -DE_DEBUG \
  -Wall -W -Wno-long-long \
  -Wno-variadic-macros  \
  -D_POSIX_PTHREAD_SEMANTICS \
  -D_REENTRANT \
  -DDO_HOST_BY_NAME \
  -fPIC -Wconversion \
  -DOSPL_VERSION="6.9.190705OSS"

# idlpp
#=======================================
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := idlpp
LOCAL_SRC_FILES := $(addprefix code/, $(idlpp_src_files))
LOCAL_CFLAGS := $(idlpp_cflags)
LOCAL_STATIC_LIBRARIES := libddscpp
LOCAL_SHARED_LIBRARIES := libddshts
LOCAL_C_INCLUDES := \
  $(LOCAL_PATH)/include \
  $(LOCAL_PATH)/../../abstraction/os/include \
  $(LOCAL_PATH)/../../abstraction/os/linux \
  $(LOCAL_PATH)/../../cpp/include \
  $(LOCAL_PATH)/../../database/database/include \
  $(LOCAL_PATH)/../../database/serialization/include \
  $(LOCAL_PATH)/../../utilities/include

include $(BUILD_HOST_EXECUTABLE)
