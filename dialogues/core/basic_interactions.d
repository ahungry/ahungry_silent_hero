// Candlekeep -Winthrop
EXTEND_BOTTOM innke2 0 IF ~~ THEN
  REPLY @1001
  GOTO winthrop_ash
END

APPEND innke2 IF ~~ THEN BEGIN winthrop_ash
  SAY @10000
    ++ @1002 DO ~SetGlobal("A7STO-INN2616","GLOBAL",1)
                 StartStore("Inn2616",LastTalkedToBy(Myself))~ EXIT
    ++ @1004 + 8
  END
END

// Candlekeep - Shank
EXTEND_BOTTOM shank_ 0 IF ~~ THEN
  REPLY @1001
  GOTO shank_ash_bye
END

APPEND shank_ IF ~~ THEN BEGIN shank_ash_bye
  SAY @10001
  IF ~~ THEN DO ~SetGlobal("Carbos","GLOBAL",1)
                 Enemy()~ EXIT
  END
END

// Candlekeep - Carbos
EXTEND_BOTTOM carbos_ 0 IF ~~ THEN
  REPLY @1001
  GOTO carbos_ash_bye
END

APPEND carbos_ IF ~~ THEN BEGIN carbos_ash_bye
  SAY @10002
  IF ~~ THEN DO ~SetGlobal("Shank","GLOBAL",1)
                 Enemy()~ EXIT
  END
END

// Candlekeep - Parda
EXTEND_BOTTOM parda1 0 IF ~~ THEN REPLY @1001 GOTO 2 END

// Candlekeep - Karan
EXTEND_BOTTOM karan1 0 IF ~~ THEN REPLY @1001 GOTO 1 END

// Candlekeep - Fuller
EXTEND_BOTTOM fuller 0 IF ~~ THEN REPLY @1001 GOTO 2 END

// Candlekeep - Gatewarden
EXTEND_BOTTOM gateward 0 IF ~~ THEN REPLY @1001 GOTO 2 END
