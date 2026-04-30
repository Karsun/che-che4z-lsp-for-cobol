      *****************************************************************
      *     IBM MQ CMQPMOV - Put message options with values (internal)*
      *     Mirrors IBM-supplied CMQPMOV: MQPMO structure + put-message *
      *     option constants. IBM copybook is on the compile copy     *
      *     library (e.g. SCSQCOBC), not in this repo.                 *
      *     Copy under an 01 (e.g. 01 MQPMO-xxx). No 01 here so       *
      *     inserted 05s become children of the host 01.              *
      *****************************************************************
      *     MQPMO structure (put message options) - input/output on
      *     MQPUT and MQPUT1. Requires 16-byte alignment on IBM i.
       05  MQPMO-STRUCID           PIC X(4)       VALUE 'PMO '.
       05  MQPMO-VERSION          PIC S9(9) BINARY VALUE 2.
       05  MQPMO-OPTIONS          PIC S9(9) BINARY VALUE 0.
       05  MQPMO-TIMEOUT          PIC S9(9) BINARY VALUE -1.
       05  MQPMO-CONTEXT          PIC X(48)      VALUE LOW-VALUES.
       05  MQPMO-KNOWNDESTCOUNT   PIC S9(9) BINARY VALUE 0.
       05  MQPMO-UNKNOWNDESTCOUNT PIC S9(9) BINARY VALUE 0.
       05  MQPMO-INVALIDDESTCOUNT PIC S9(9) BINARY VALUE 0.
       05  MQPMO-PUTMSGRECOFFSET  PIC S9(9) BINARY VALUE 0.
       05  MQPMO-RESPONSERECOFFSET PIC S9(9) BINARY VALUE 0.
       05  MQPMO-PUTMSGRECPTR     PIC X(32)      VALUE LOW-VALUES.
       05  MQPMO-RESPONSERECPTR   PIC X(32)      VALUE LOW-VALUES.
       05  MQPMO-RESOLVEDQNAME    PIC X(48)      VALUE SPACES.
       05  MQPMO-RESOLVEDQMGRNAME PIC X(48)      VALUE SPACES.
       05  MQPMO-PUBLEVEL         PIC S9(9) BINARY VALUE 0.
       05  MQPMO-ACTION           PIC S9(9) BINARY VALUE 0.
       05  MQPMO-NEWMSGHANDLE     PIC X(40)      VALUE LOW-VALUES.
       05  MQPMO-ORIGINALMSGHANDLE PIC X(40)     VALUE LOW-VALUES.
      *     Put-message option constants (for use with MQPMO-OPTIONS)
      *     Syncpoint: mutually exclusive
       05  MQPMO-NO-SYNCPOINT     PIC S9(9) BINARY VALUE 0.
       05  MQPMO-SYNCPOINT        PIC S9(9) BINARY VALUE 2.
      *     Message/correlation ID generation
       05  MQPMO-NEW-MSG-ID       PIC S9(9) BINARY VALUE 4.
       05  MQPMO-NEW-CORREL-ID    PIC S9(9) BINARY VALUE 8.
      *     Context: mutually exclusive (identity/origin context)
       05  MQPMO-DEFAULT-CONTEXT  PIC S9(9) BINARY VALUE 0.
       05  MQPMO-PASS-IDENTITY-CONTEXT PIC S9(9) BINARY VALUE 256.
       05  MQPMO-PASS-ALL-CONTEXT PIC S9(9) BINARY VALUE 512.
       05  MQPMO-SET-IDENTITY-CONTEXT PIC S9(9) BINARY VALUE 1024.
       05  MQPMO-SET-ALL-CONTEXT  PIC S9(9) BINARY VALUE 2048.
      *     Response type (e.g. MQPUT1): mutually exclusive
       05  MQPMO-ASYNC-RESPONSE   PIC S9(9) BINARY VALUE 4096.
       05  MQPMO-SYNC-RESPONSE    PIC S9(9) BINARY VALUE 8192.
       05  MQPMO-RESPONSE-AS-Q-DEF PIC S9(9) BINARY VALUE 16384.
      *     Queue manager / connection behavior
       05  MQPMO-FAIL-IF-QUIESCING PIC S9(9) BINARY VALUE 8192.
      *     Structure version constants (for MQPMO-VERSION)
       05  MQPMO-VERSION-2        PIC S9(9) BINARY VALUE 2.
       05  MQPMO-VERSION-3        PIC S9(9) BINARY VALUE 3.
