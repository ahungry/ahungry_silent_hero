// First meeting in candlekeep
EXTEND_BOTTOM imoen 0 IF ~~ THEN
  // REPLY @1001
  // GOTO imoen_ash
  REPLY @1001 GOTO imoen_ash // shorthand for the preceding
END

APPEND imoen IF ~~ THEN BEGIN imoen_ash
  SAY @1200 IF ~~ THEN EXIT END
END

// First encounter to invite to party (imoen mod added maybe?)
EXTEND_BOTTOM imoen2j 6523 IF ~~ THEN
  REPLY @1001 GOTO imoen2j_ash // remain silent
END

EXTEND_BOTTOM imoen2j 6523 IF ~~ THEN
  REPLY @1005 GOTO imoen2j_ash_run
END

APPEND imoen2j IF ~~ THEN BEGIN imoen2j_ash
  // Cat got your tongue?  Well, I'm comin' with ya!
  SAY @1201 IF ~~ THEN DO ~JoinParty()~ EXIT END
END

APPEND imoen2j IF ~~ THEN BEGIN imoen2j_ash_run
  SAY @1202 IF ~~ THEN DO ~SetDialogue("IMOENP_")~ EXIT END // Run away
END
