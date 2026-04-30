      *****************************************************************
      *     IBM MQ CMQTML - Trigger message (internal copybook)       *
      *     Mirrors IBM-supplied CMQTML (MQTM structure). IBM         *
      *     copybook is on the compile copy library (e.g. SCSQCOBC),  *
      *     not in this repo.                                         *
      *     Copy under an 01 (e.g. 01 MQ-GET-QUEUE-MESSAGE). No 01     *
      *     here so inserted 05s become children of the host 01.      *
      *****************************************************************
      *     MQTM structure (trigger message) - queue manager fills
      *     when creating a trigger message from queue/process defs
       05  MQTM.
       10  MQTM-STRUCID           PIC X(4)       VALUE 'TM  '.
       10  MQTM-VERSION           PIC S9(9) BINARY VALUE 1.
       10  MQTM-QNAME             PIC X(48)      VALUE SPACES.
       10  MQTM-PROCESSNAME       PIC X(48)      VALUE SPACES.
       10  MQTM-TRIGGERDATA       PIC X(64)      VALUE SPACES.
       10  MQTM-APPLTYPE          PIC S9(9) BINARY VALUE 0.
       10  MQTM-APPLID            PIC X(256)     VALUE SPACES.
       10  MQTM-ENVDATA           PIC X(128)     VALUE SPACES.
       10  MQTM-USERDATA          PIC X(128)     VALUE SPACES.
      *     Application type constants (MQAT) - for MQTM-APPLTYPE.
      *     Type of application the trigger monitor should start.
       05  MQAT-DEFAULT           PIC S9(9) BINARY VALUE 0.
       05  MQAT-CICS              PIC S9(9) BINARY VALUE 1.
       05  MQAT-IMS               PIC S9(9) BINARY VALUE 2.
       05  MQAT-MVS               PIC S9(9) BINARY VALUE 3.
       05  MQAT-OS2               PIC S9(9) BINARY VALUE 4.
       05  MQAT-DOS               PIC S9(9) BINARY VALUE 5.
       05  MQAT-UNIX              PIC S9(9) BINARY VALUE 6.
       05  MQAT-QMGR              PIC S9(9) BINARY VALUE 7.
       05  MQAT-OS400             PIC S9(9) BINARY VALUE 8.
       05  MQAT-WINDOWS           PIC S9(9) BINARY VALUE 9.
       05  MQAT-CICS-VSE          PIC S9(9) BINARY VALUE 10.
       05  MQAT-WINDOWS-NT        PIC S9(9) BINARY VALUE 11.
       05  MQAT-VMS               PIC S9(9) BINARY VALUE 12.
       05  MQAT-NSK               PIC S9(9) BINARY VALUE 13.
       05  MQAT-VOS               PIC S9(9) BINARY VALUE 14.
       05  MQAT-JAVA              PIC S9(9) BINARY VALUE 15.
