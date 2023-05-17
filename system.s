;----------------------------------------------------------
;           MARIO KART WII SYSTEM DECLARATIONS
;                 (C) HARRY CLARK 2023
;----------------------------------------------------------

;----------------------------------------------------------
;          THIS FILE PERTAINS TO THE FUNCTIONALITY
;          OF THE SYSTEM COUROUTINE RESPONSIBLE
;          FOR FLUSHING THE SYSTEM HEAP AND STACK
;----------------------------------------------------------

;------------------------------------------------------------------------
;    DOCUMENTATION USED: http://www.wiibrew.org/wiki/Assembler_Tutorial
;------------------------------------------------------------------------

.INCLUDE: DEFINES.S

.SECTION: FLUSH_SYS
GLOBAL FLUSH_SYS

FLUSH_SYS:

NO_FRALLOC:

STWU     R1, -0x20(R1) // STORE WORD WITH UPDATE INTO GPR R1
MFLR     R0            // MOVE THE STORED WORD TO GPR R0
STW      R0 0x24(R1)   // STORE WORD FROM R0 WITH THE VALUE 36 INTO R1

LIS      R30, SYSTEM_MANAGER // LOAD IMMEDIATE SHIFTED - SETS THE HIGHER 16 BITS OF GPR 30 TO THE SYSTEM MANAGER

SYSTEM_MANAGER:

LWZ      R3, 1(R29) // LOAD WORD AND ZERO - READ THE WORD AT GPR R3 AND ADD IT TO R29 BY THE OFFSET OF 1
LWZ      R3, 76(R3)
