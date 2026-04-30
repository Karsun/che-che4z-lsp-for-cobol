      *****************************************************************
      *     IBM MQ CMQMDV - Message descriptor with values (internal)  *
      *     Mirrors IBM-supplied CMQMDV (MQMD structure). IBM copybook *
      *     is on the compile copy library (e.g. SCSQCOBC), not in     *
      *     this repo.                                                 *
      *     Copy under an 01 (e.g. 01 MQM-MD-REPLY). No 01 here so     *
      *     inserted 05s become children of the host 01.               *
      *****************************************************************
      *     MQMD structure (message descriptor) - input/output on
      *     MQGET, MQPUT, MQPUT1. Data in char set of queue manager.
       05  MQMD-STRUCID           PIC X(4)       VALUE 'MD  '.
       05  MQMD-VERSION           PIC S9(9) BINARY VALUE 1.
       05  MQMD-REPORT            PIC S9(9) BINARY VALUE 0.
       05  MQMD-MSGTYPE           PIC S9(9) BINARY VALUE 8.
       05  MQMD-EXPIRY            PIC S9(9) BINARY VALUE -1.
       05  MQMD-FEEDBACK          PIC S9(9) BINARY VALUE 0.
       05  MQMD-ENCODING          PIC S9(9) BINARY VALUE 273.
       05  MQMD-CODEDCHARSETID    PIC S9(9) BINARY VALUE 0.
       05  MQMD-FORMAT            PIC X(8)       VALUE SPACES.
       05  MQMD-PRIORITY          PIC S9(9) BINARY VALUE 0.
       05  MQMD-PERSISTENCE       PIC S9(9) BINARY VALUE 0.
       05  MQMD-MSGID             PIC X(24)      VALUE LOW-VALUES.
       05  MQMD-CORRELID          PIC X(24)      VALUE LOW-VALUES.
       05  MQMD-BACKOUTCOUNT      PIC S9(9) BINARY VALUE 0.
       05  MQMD-REPLYTOQ          PIC X(48)      VALUE SPACES.
       05  MQMD-REPLYTOQMGR       PIC X(48)      VALUE SPACES.
       05  MQMD-USERIDENTIFIER    PIC X(12)      VALUE SPACES.
       05  MQMD-ACCOUNTINGTOKEN   PIC X(32)      VALUE LOW-VALUES.
       05  MQMD-APPLIDENTITYDATA  PIC X(32)      VALUE SPACES.
       05  MQMD-PUTAPPLTYPE       PIC S9(9) BINARY VALUE 0.
       05  MQMD-PUTAPPLNAME       PIC X(28)      VALUE SPACES.
       05  MQMD-PUTDATE           PIC X(8)       VALUE SPACES.
       05  MQMD-PUTTIME           PIC X(8)       VALUE SPACES.
       05  MQMD-APPLORIGINDATA    PIC X(4)       VALUE SPACES.
       05  MQMD-GROUPID           PIC X(24)      VALUE LOW-VALUES.
       05  MQMD-MSGSEQNUMBER      PIC S9(9) BINARY VALUE 1.
       05  MQMD-OFFSET            PIC S9(9) BINARY VALUE 0.
       05  MQMD-MSGFLAGS          PIC S9(9) BINARY VALUE 0.
       05  MQMD-ORIGINALLENGTH    PIC S9(9) BINARY VALUE 0.
      *     Structure version (for MQMD-VERSION)
       05  MQMD-VERSION-1         PIC S9(9) BINARY VALUE 1.
       05  MQMD-VERSION-2         PIC S9(9) BINARY VALUE 2.
      *     Report options (MQRO) - for MQMD-REPORT; combine by adding
       05  MQRO-NONE              PIC S9(9) BINARY VALUE 0.
       05  MQRO-EXCEPTION         PIC S9(9) BINARY VALUE 256.
       05  MQRO-EXCEPTION-WITH-DATA PIC S9(9) BINARY VALUE 512.
       05  MQRO-EXCEPTION-WITH-FULL-DATA PIC S9(9) BINARY VALUE 1024.
       05  MQRO-EXPIRATION        PIC S9(9) BINARY VALUE 2048.
       05  MQRO-EXPIRATION-WITH-DATA PIC S9(9) BINARY VALUE 4096.
       05  MQRO-EXPIRATION-WITH-FULL-DATA PIC S9(9) BINARY VALUE 8192.
      *     Message type (MQMT) - for MQMD-MSGTYPE
       05  MQMT-REQUEST           PIC S9(9) BINARY VALUE 1.
       05  MQMT-REPLY             PIC S9(9) BINARY VALUE 2.
       05  MQMT-REPORT            PIC S9(9) BINARY VALUE 4.
       05  MQMT-DATAGRAM          PIC S9(9) BINARY VALUE 8.
      *     Persistence (MQPER) - for MQMD-PERSISTENCE
       05  MQPER-NOT-PERSISTENT   PIC S9(9) BINARY VALUE 0.
       05  MQPER-PERSISTENT       PIC S9(9) BINARY VALUE 1.
       05  MQPER-PERSISTENCE-AS-Q-DEF PIC S9(9) BINARY VALUE 2.
      *     Encoding (MQENC) - for MQMD-ENCODING
       05  MQENC-NATIVE           PIC S9(9) BINARY VALUE 273.
      *     Expiry (MQEI) - for MQMD-EXPIRY; -1 = unlimited
       05  MQEI-UNLIMITED         PIC S9(9) BINARY VALUE -1.
      *     Format name (MQFMT) - for MQMD-FORMAT; 8-char
       05  MQFMT-NONE             PIC X(8)       VALUE SPACES.
       05  MQFMT-STRING           PIC X(8)       VALUE 'MQSTR   '.
       05  MQFMT-MD-EXTENSION     PIC X(8)       VALUE 'MQHMDE  '.
      *     Message flags (MQMF) - for MQMD-MSGFLAGS; combine by adding
       05  MQMF-NONE              PIC S9(9) BINARY VALUE 0.
       05  MQMF-SEGMENT           PIC S9(9) BINARY VALUE 4.
       05  MQMF-LAST-SEGMENT      PIC S9(9) BINARY VALUE 8.
       05  MQMF-SEGMENTATION-ALLOWED PIC S9(9) BINARY VALUE 64.
