2 DIM l$(7,19)
5 CLS : FLASH 1: PRINT "\'.\'.\'.\'.\'.\ :\''\': AVOID SANTA\ :\''\':\'.\'.\'.\'.\'."
6 FLASH 0: REM "Original code taken from";'';" '101 programs for SPECTRUM'": PRINT "Firelord Quality games Ltd"
7 PRINT "Version 1.01  12-Dec-2021": PRINT '
9 REM X= GUESSED NUMBER , B=
10 POKE 23658,8: LET x=0: LET b=1
20 PRINT "SANTA IS AFTER YOU! BECAUSE YOU EXPOSED HIM! YOU MUST AVOID HIM!"'"THINK OF A LOCATION WHERE YOU ";';"WANT TO HIDE :";''
21 FOR k=1 TO 7: READ l$(k): PRINT k;".";l$(k)': NEXT k: GO SUB 200
40 PRINT "NOW YOU WILL SEE A SET OF                HIDING PLACES."''"IF YOUR HIDE LOCATION IS HERE"'"PRESS 'Y'"'"ELSE PRESS 'N'"
50 GO SUB 200
70 CLS : GO SUB 1000
80 PRINT "IS YOUR HIDING PLACE HERE Y/N?"
90 LET i$=INKEY$
100 IF i$<>"n" AND i$<>"y" AND i$<>"N" AND i$<>"Y" THEN GO TO 90
110 IF i$="y" OR i$="Y" THEN LET x=x+b
119 REM b=32 orig B=binary bits??/
120 IF b=4 THEN GO TO 150
130 LET b=b*2: GO TO 70
150 CLS : IF x=0 THEN PRINT "!!!ERROR!!!": GO TO 160
155 PRINT : PRINT "I FOUND YOU!!! YOU WERE HIDING : ": FLASH 1: PRINT l$(x): FLASH 0
160 PRINT "PRESS ANY KEY"
170 GO SUB 205
180 RUN 
200 PRINT '''"                  PRESS ANY KEY"
205 IF INKEY$<>"" THEN GO TO 205
210 IF INKEY$="" THEN GO TO 210
220 CLS : RETURN 

1000 LET c=1: LET n=b: LET s=1
1009 REM " 8" or "19" n:printed number
1010 REM PRINT (" " AND n<10)+" ";n;" ";
1011 REM PRINT n;".";l$(n);" ";
1012 PRINT "->";l$(n);" ";
1014 REM s=numbers shown per line
1015 IF s=1 THEN LET s=0: PRINT '''
1019 REM if number show is bigger than 8 return to 80 *ask Y/N
1020 IF n>=7 THEN RETURN 
1029 REM n1=next number
1030 LET n1=n+1+(b AND c=b)
1040 IF c=b THEN LET c=0
1050 LET c=c+1: LET n=n1: LET s=s+1
1060 GO TO 1010
3000 DATA "Bathroom","Bedroom","Living Room","GuestRoom","Chimney","Behind the tree","Behind Curtain!"
