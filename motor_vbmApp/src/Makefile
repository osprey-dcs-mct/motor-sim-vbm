TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = motor_vbm
# motor_vbm.dbd will be created and installed
DBD += motor_vbm.dbd

# motor_vbm.dbd will be made up from these files:
motor_vbm_DBD += base.dbd

# Include dbd files from all support applications:
motor_vbm_DBD += asyn.dbd
motor_vbm_DBD += motorSupport.dbd
motor_vbm_DBD += devSoftMotor.dbd
motor_vbm_DBD += motorSimSupport.dbd


# Add all the support libraries needed by this IOC
motor_vbm_LIBS += motor
motor_vbm_LIBS += motorSimSupport
motor_vbm_LIBS += softMotor
motor_vbm_LIBS += asyn

# motor_vbm_registerRecordDeviceDriver.cpp derives from motor_vbm.dbd
motor_vbm_SRCS += motor_vbm_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
motor_vbm_SRCS_DEFAULT += motor_vbmMain.cpp
motor_vbm_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#motor_vbm_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
motor_vbm_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

