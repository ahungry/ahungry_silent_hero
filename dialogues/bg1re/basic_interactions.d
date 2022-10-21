// Candlekeep - Phlydia
EXTEND_BOTTOM phlydi %phlydia_bg1re_1% IF ~~ THEN
  REPLY @1001
  DO ~GiveItemCreate("TIC0SCRL",Player1,0,0,0)
      AddJournalEntry(354484,QUEST)~ GOTO %phlydia_bg1re_2%
END
