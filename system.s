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

extern NO_FRALLOC
extern SET_VIDEO_BLANK

.SECTION: FLUSH_SYS

FLUSH_SYS:

STWU     R1, -0x20(R1) // STORE WORD WITH UPDATE INTO GPR R1
MFLR     R0            // MOVE FROM LINK REGISTER - MOVES TO GPR R0
