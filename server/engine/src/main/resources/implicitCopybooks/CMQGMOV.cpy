      *****************************************************************
      *     IBM MQ CMQGMOV - Get message options with values (internal)*
      *     Mirrors IBM-supplied CMQGMOV: MQGMO structure + get-message *
      *     option constants. IBM copybook is on the compile copy     *
      *     library (e.g. SCSQCOBC), not in this repo.                 *
      *     Copy under an 01 (e.g. 01 MQGMO-xxx). No 01 here so       *
      *     inserted 05s become children of the host 01.               *
      *****************************************************************
      *     MQGMO structure (get message options) - input/output on
      *     MQGET. Requires 16-byte alignment on IBM i.
       05  MQGMO-STRUCID           PIC X(4)       VALUE 'GMO '.
       05  MQGMO-VERSION           PIC S9(9) BINARY VALUE 1.
       05  MQGMO-OPTIONS           PIC S9(9) BINARY VALUE 0.
       05  MQGMO-WAITINTERVAL      PIC S9(9) BINARY VALUE 0.
       05  MQGMO-SIGNAL1           PIC S9(9) BINARY VALUE 0.
       05  MQGMO-SIGNAL2           PIC S9(9) BINARY VALUE 0.
       05  MQGMO-RESOLVEDQNAME     PIC X(48)      VALUE SPACES.
       05  MQGMO-MATCHOPTIONS      PIC S9(9) BINARY VALUE 0.
      *     Get-message option constants (for use with MQGMO-OPTIONS)
      *     Wait: mutually exclusive
       05  MQGMO-NO-WAIT           PIC S9(9) BINARY VALUE 0.
       05  MQGMO-WAIT              PIC S9(9) BINARY VALUE 1.
      *     Syncpoint: mutually exclusive
       05  MQGMO-NO-SYNCPOINT      PIC S9(9) BINARY VALUE 0.
       05  MQGMO-SYNCPOINT         PIC S9(9) BINARY VALUE 2.
       05  MQGMO-SYNC-POINT-IF-PERSISTENT PIC S9(9) BINARY VALUE 256.
      *     Message data / conversion
       05  MQGMO-CONVERT           PIC S9(9) BINARY VALUE 4.
      *     Browse options
       05  MQGMO-BROWSE-FIRST      PIC S9(9) BINARY VALUE 8.
       05  MQGMO-BROWSE-NEXT       PIC S9(9) BINARY VALUE 16.
       05  MQGMO-BROWSE-MSG-UNDER-CURSOR PIC S9(9) BINARY VALUE 2048.
       05  MQGMO-GET-MSG-UNDER-CURSOR PIC S9(9) BINARY VALUE 4096.
      *     Logical order / groups and segments
       05  MQGMO-LOGICAL-ORDER     PIC S9(9) BINARY VALUE 32.
      *     Lock / unlock
       05  MQGMO-LOCK              PIC S9(9) BINARY VALUE 512.
       05  MQGMO-UNLOCK            PIC S9(9) BINARY VALUE 65536.
      *     Truncation
       05  MQGMO-ACCEPT-TRUNCATED-MSG PIC S9(9) BINARY VALUE 64.
      *     Queue manager behavior
       05  MQGMO-FAIL-IF-QUIESCING PIC S9(9) BINARY VALUE 8192.
      *     Structure version constants (for MQGMO-VERSION)
       05  MQGMO-VERSION-1         PIC S9(9) BINARY VALUE 1.
       05  MQGMO-VERSION-2         PIC S9(9) BINARY VALUE 2.
      *     Wait interval (MQWI) - for MQGMO-WAITINTERVAL
       05  MQWI-UNLIMITED          PIC S9(9) BINARY VALUE -1.
