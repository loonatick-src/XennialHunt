600 REM print maze
605 IF steps = 0 THEN
630   LOCATE 2,1 : REM top left corner of the maze
640   FOR row = 0 TO height-1
650     FOR col = 0 TO width-1
710       LET cell = PEEK(16 + row * width + col)
720       IF cell = 0 THEN PRINT " ";
730       IF cell = 1 THEN PRINT "X";
750     NEXT col
760   PRINT ""
770   NEXT row
771 END IF
772 LET prow = PEEK(1)+2
774 LET pcol = PEEK(2)+1
776 LOCATE prow, pcol
778 PRINT "@";
780 LOCATE prow-1, pcol
782 IF PEEK(16 + (prow-3) * width + pcol-1) = 0 THEN
784   PRINT " ";
786 ELSE
788   PRINT "X";
790 END IF
800 LOCATE prow, pcol-1
810 IF PEEK(16 + (prow-2) * width + pcol - 2) = 0 THEN
820  PRINT " ";
830 ELSE
840  PRINT "X";
850 END IF
860 LOCATE prow, pcol+1
870 IF PEEK(16 + (prow-2) * width + pcol) = 0 THEN
880  PRINT " ";
890 ELSE
900  PRINT "X";
910 END IF
920 LOCATE prow+1, pcol
930 IF PEEK(16 + (prow-1) * width + pcol-1) = 0 THEN
940  PRINT " ";
950 ELSE
960  PRINT "X";
970 END IF
980 LOCATE 1, 10 : PRINT "STEPS: "; steps
990 steps = steps + 1
1000 RETURN

     