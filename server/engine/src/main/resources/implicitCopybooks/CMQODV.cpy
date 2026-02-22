      *****************************************************************
      *     IBM MQ CMQODV - Object descriptor with values (internal)   *
      *     Mirrors IBM-supplied CMQODV: MQOD structure only.          *
      *     Named constants (MQCO, MQOO, MQOT, MQOD-VERSION-*) are    *
      *     in CMQV. IBM copybook is on the compile copy library      *
      *     (e.g. SCSQCOBC), not in this repo.                         *
      *     Copy under an 01 (e.g. 01 MQM-OD-REPLY). No 01 here so    *
      *     inserted 05s become children of the host 01.               *
      *****************************************************************
      *     MQOD structure (object descriptor) - input/output on
      *     MQOPEN. Requires 16-byte alignment on IBM i.
       05  MQOD-STRUCID           PIC X(4)       VALUE 'OD  '.
       05  MQOD-VERSION           PIC S9(9) BINARY VALUE 1.
       05  MQOD-OBJECTTYPE        PIC S9(9) BINARY VALUE 0.
       05  MQOD-OBJECTNAME        PIC X(48)      VALUE SPACES.
       05  MQOD-OBJECTQMGRNAME    PIC X(48)      VALUE SPACES.
       05  MQOD-DYNAMICQNAME      PIC X(48)      VALUE SPACES.
       05  MQOD-ALTERNATEUSERID   PIC X(12)      VALUE SPACES.
       05  MQOD-RECSPRESENT       PIC S9(9) BINARY VALUE 0.
       05  MQOD-KNOWNDESTCOUNT    PIC S9(9) BINARY VALUE 0.
       05  MQOD-UNKNOWNDESTCOUNT  PIC S9(9) BINARY VALUE 0.
       05  MQOD-INVALIDDESTCOUNT  PIC S9(9) BINARY VALUE 0.
       05  MQOD-OBJECTRECOFFSET   PIC S9(9) BINARY VALUE 0.
       05  MQOD-RESPONSERECOFFSET PIC S9(9) BINARY VALUE 0.
       05  MQOD-OBJECTRECPTR     PIC X(32)      VALUE LOW-VALUES.
       05  MQOD-RESPONSERECPTR   PIC X(32)      VALUE LOW-VALUES.
       05  MQOD-ALTERNATESECURITYID PIC X(40)   VALUE SPACES.
       05  MQOD-RESOLVEDQNAME     PIC X(48)      VALUE SPACES.
       05  MQOD-RESOLVEDQMGRNAME  PIC X(48)      VALUE SPACES.
