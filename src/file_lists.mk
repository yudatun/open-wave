abstraction_os_src_files := \
  $(call all-c-files-under,abstraction/os/code)

abstraction_os_net_src_files := \
  $(call all-c-files-under,abstraction/os-net/code)

abstraction_os_linux_src_files := \
  abstraction/os/linux/code/os__library.c \
  abstraction/os/linux/code/os__cfg_weak.c \
  abstraction/os/linux/code/os__linuxEntropyHook.c \
  abstraction/os/linux/code/os__signalHandler.c \
  abstraction/os/linux/code/os__process.c \

utilities_src_files := \
  $(call all-c-files-under,utilities/code)

database_database_src_files := \
  $(call all-c-files-under,database/database/code)

database_serialization_src_files := \
  $(call all-c-files-under,database/serialization/code)

configuration_config_src_files := \
  $(call all-c-files-under,configuration/config/code)

configuration_parser_src_files := \
  $(call all-c-files-under,configuration/parser/code)

configuration_validator_src_files := \
  $(call all-c-files-under,configuration/validator/code)

kernel_src_files := \
  $(call all-c-files-under,kernel/code)

user_src_files := \
  $(call all-c-files-under,user/code)

api_dcps_common_src_files := \
  $(call all-c-files-under,api/dcps/common/code)

osplcore_bld_x86_64.linux-release_src_files := \
  osplcore/bld/x86_64.linux-release/kernelModule.c \
  osplcore/bld/x86_64.linux-release/kernelModuleI.c

gen_api_dcps_c++_sacpp_bld_x86_64.linux-release_src_files := \
  $(call all-cpp-files-under,api/dcps/c++/sacpp/bld/x86_64.linux-release)

api_dcps_c++_common_src_files := \
  $(call all-cpp-files-under,api/dcps/c++/common/code)

api_dcps_c++_sacpp_src_files := \
  $(call all-cpp-files-under,api/dcps/c++/sacpp/code)

services_spliced_bld_x86_64.linux-release_src_files := \
  services/spliced/bld/x86_64.linux-release/dds_builtInTypes_register.c

services_spliced_src_files := \
  $(call all-c-files-under,services/spliced/code)

services_durability_bld_x86_64.linux-release_src_files := \
  services/durability/bld/x86_64.linux-release/durabilityModule2.c

_services_durability_src_files := \
  $(call all-c-files-under,services/durability/code)
services_durability_src_files := \
  $(filter-out %.tmpl.c, $(_services_durability_src_files))

services_ddsi2_bld_x86_64.linux-release_src_files := \
  services/ddsi2/bld/x86_64.linux-release/q_osplserModule.c

_services_ddsi2_src_files := \
  $(call all-c-files-under,services/ddsi2/code)
services_ddsi2_src_files := \
  $(filter-out %template.c, $(_services_ddsi2_src_files))
