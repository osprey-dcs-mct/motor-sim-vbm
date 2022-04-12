#!../../bin/darwin-x86/motor_vbm

#- You may have to change motor_vbm to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/motor_vbm.dbd"
motor_vbm_registerRecordDeviceDriver pdbbase

# Create simulated motors: ( start card , start axis , low limit, high limit, home posn, # cards, # axes to setup)
#motorSimCreate( 0, 0, -32000, 32000, 0, 1, 4 )
# Setup the Asyn layer (portname, low-level driver drvet name, card, number of axes on card)
#drvAsynMotorConfigure("motorSim1", "motorSim", 0, 4)

motorSimCreateController("motorSim2", 8)
#asynSetTraceIOMask("motorSim2", 0, 4)
#asynSetTraceMask("motorSim2", 0, 255)

# motorSimConfigAxis(port, axis, lowLimit, highLimit, home, start)
motorSimConfigAxis("motorSim2", 0, 20000, -20000,  500, 0)
motorSimConfigAxis("motorSim2", 1, 20000, -20000, 1500, 0)
motorSimConfigAxis("motorSim2", 2, 20000, -20000, 2500, 0)
motorSimConfigAxis("motorSim2", 3, 20000, -20000, 3000, 0)
motorSimConfigAxis("motorSim2", 4, 20000, -20000,  500, 0)
motorSimConfigAxis("motorSim2", 5, 20000, -20000, 1500, 0)
motorSimConfigAxis("motorSim2", 6, 20000, -20000, 2500, 0)
motorSimConfigAxis("motorSim2", 7, 20000, -20000, 3000, 0)

## Load record instances
dbLoadTemplate("db/motor.substitutions")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
