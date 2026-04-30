      *****************************************************************
      *     IBM MQ CMQV - MQI named constants (internal copy)         *
      *     Mirrors IBM-supplied CMQV. IBM copybook is on the compile *
      *     copy library (e.g. SCSQCOBC), not in this repo.           *
      *     Structure-specific constants (MQMT, MQPER, MQENC, MQEI,   *
      *     MQMD versions, MQGMO, MQPMO, MQFMT except RFH-HEADER-2,   *
      *     MQRO) are in CMQMDV, CMQGMOV, CMQPMOV; copy when needed.  *
      *****************************************************************
       05  CMQV.
      *     Completion codes (MQCC = MQ Completion Code)
       10  MQCC-OK                 PIC S9(9) BINARY VALUE 0.
       10  MQCC-WARNING            PIC S9(9) BINARY VALUE 1.
       10  MQCC-FAILED             PIC S9(9) BINARY VALUE 2.
      *     Reason codes (MQRC = MQ Reason Code)
       10  MQRC-NONE               PIC S9(9) BINARY VALUE 0.
       10  MQRC-ALIAS-BASE-Q-TYPE-ERROR PIC S9(9) BINARY VALUE 2001.
       10  MQRC-CONNECTION-BROKEN  PIC S9(9) BINARY VALUE 2009.
       10  MQRC-GET-INHIBITED     PIC S9(9) BINARY VALUE 2016.
       10  MQRC-FORMAT-ERROR      PIC S9(9) BINARY VALUE 2110.
       10  MQRC-NO-MSG-AVAILABLE  PIC S9(9) BINARY VALUE 2033.
       10  MQRC-TRUNCATED-MSG-ACCEPTED PIC S9(9) BINARY VALUE 2035.
       10  MQRC-PUT-INHIBITED     PIC S9(9) BINARY VALUE 2042.
       10  MQRC-UNKNOWN-OBJECT-ID PIC S9(9) BINARY VALUE 2195.
      *     Message ID / Correlation ID / Group ID (match any)
      *     Move into MQMD-MSGID, MQMD-CORRELID, MQMD-GROUPID as needed
       10  MQMI-NONE              PIC X(24)      VALUE LOW-VALUES.
       10  MQCI-NONE              PIC X(24)      VALUE LOW-VALUES.
       10  MQGI-NONE              PIC X(24)      VALUE LOW-VALUES.
      *     Length of MsgId/CorrelId/GroupId fields (MQBYTE24)
       10  MQ-MSG-ID-LENGTH       PIC S9(9) BINARY VALUE 24.
      *     Match options (MQMO) - for MQGMO-MATCHOPTIONS on MQGET
       10  MQMO-NONE              PIC S9(9) BINARY VALUE 0.
       10  MQMO-MATCH-MSG-ID      PIC S9(9) BINARY VALUE 1.
       10  MQMO-MATCH-CORREL-ID   PIC S9(9) BINARY VALUE 2.
       10  MQMO-MATCH-GROUP-ID    PIC S9(9) BINARY VALUE 4.
       10  MQMO-MATCH-MSG-SEQ-NUMBER PIC S9(9) BINARY VALUE 8.
       10  MQMO-MATCH-OFFSET      PIC S9(9) BINARY VALUE 16.
      *     Coded Character Set Identifier (MQCCSI)
       10  MQCCSI-Q-MGR           PIC S9(9) BINARY VALUE 0.
      *     Format name constant (MQFMT) - only RFH-HEADER-2 here;
      *     MQFMT-NONE, MQFMT-STRING, MQFMT-MD-EXTENSION are in CMQMDV.
       10  MQFMT-RFH-HEADER-2     PIC X(8)       VALUE 'MQHRF2  '.
      *     Close options (MQCO) - for MQCLOSE
       10  MQCO-NONE              PIC S9(9) BINARY VALUE 0.
       10  MQCO-DELETE            PIC S9(9) BINARY VALUE 1.
       10  MQCO-DELETE-PURGE      PIC S9(9) BINARY VALUE 2.
       10  MQCO-KEEP-SUBSCRIPTION PIC S9(9) BINARY VALUE 4.
      *     Open options (MQOO) - for MQOPEN; combine by adding
       10  MQOO-INPUT-AS-Q-DEF    PIC S9(9) BINARY VALUE 1.
       10  MQOO-INPUT-SHARED      PIC S9(9) BINARY VALUE 2.
       10  MQOO-INPUT-EXCLUSIVE   PIC S9(9) BINARY VALUE 4.
       10  MQOO-BROWSE            PIC S9(9) BINARY VALUE 8.
       10  MQOO-OUTPUT            PIC S9(9) BINARY VALUE 16.
       10  MQOO-INQUIRE           PIC S9(9) BINARY VALUE 32.
       10  MQOO-SET               PIC S9(9) BINARY VALUE 64.
       10  MQOO-SAVE-ALL-CONTEXT  PIC S9(9) BINARY VALUE 128.
       10  MQOO-PASS-IDENTITY-CONTEXT PIC S9(9) BINARY VALUE 256.
       10  MQOO-PASS-ALL-CONTEXT  PIC S9(9) BINARY VALUE 512.
       10  MQOO-SET-IDENTITY-CONTEXT PIC S9(9) BINARY VALUE 1024.
       10  MQOO-SET-ALL-CONTEXT   PIC S9(9) BINARY VALUE 2048.
       10  MQOO-ALTERNATE-USER-AUTHORITY PIC S9(9) BINARY VALUE 4096.
       10  MQOO-FAIL-IF-QUIESCING PIC S9(9) BINARY VALUE 8192.
       10  MQOO-BIND-ON-OPEN      PIC S9(9) BINARY VALUE 16384.
       10  MQOO-BIND-NOT-FIXED    PIC S9(9) BINARY VALUE 32768.
       10  MQOO-BIND-AS-Q-DEF     PIC S9(9) BINARY VALUE 0.
      *     Object type constants (MQOT) - for MQOD-OBJECTTYPE
       10  MQOT-Q                 PIC S9(9) BINARY VALUE 1.
       10  MQOT-NAMELIST          PIC S9(9) BINARY VALUE 2.
       10  MQOT-PROCESS           PIC S9(9) BINARY VALUE 3.
       10  MQOT-Q-MGR             PIC S9(9) BINARY VALUE 4.
      *     MQOD structure version (for MQOD-VERSION)
       10  MQOD-VERSION-1         PIC S9(9) BINARY VALUE 1.
       10  MQOD-VERSION-2         PIC S9(9) BINARY VALUE 2.
