EXTEND_BOTTOM gorion 0 IF ~Global("DontRepeat","LOCALS",0)~ THEN
  REPLY @1001
  DO ~SetGlobal("DontRepeat","LOCALS",1)~
  GOTO 8
END
