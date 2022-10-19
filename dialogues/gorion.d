EXTEND_BOTTOM gorion 0 IF ~Global("DontRepeat","LOCALS",0)~ THEN REPLY ~(remain silent)~ DO ~SetGlobal("DontRepeat","LOCALS",1)~ GOTO 8 END
