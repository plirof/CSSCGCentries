10 REM LOADER
100 PAPER 0: INK 2: BORDER 0: CLS 
8900 PRINT FLASH 1;"- - -FIRELORD QUALITY GAMES- - -"
8950 PRINT FLASH 1;"- - - & SALES DEPARTMENT   - - -"; FLASH 0' INK 3;"            PRESENTS"; INK 2
8960 PRINT AT 4,8; FLASH 1;"----------------"; FLASH 0
9000 PRINT AT 5,8; FLASH 1;"IDLE BILLIONAIRE"; FLASH 0
9005 PRINT AT 6,8; FLASH 1;"----------------"; FLASH 0
9010 PRINT ''" THE MANAGER GAME OF THE CENTURY"
9011 PRINT 
9020 PRINT INK 1;"CAN YOU BECOME THE "
9030 PRINT "         "; INK 5;"A BILLIONAIRE?"'"           VERY EASY?      "
9220 REM :PRINT "FEATURING MORE ADVICE THAN "'"MOST BOOKS!!"; INK 2
9500 PRINT ''"AN EXCITING & THRILLING"'"          SIMULATION "
9900 REM PRINT FLASH 1;"- - -FIRELORD QUALITY GAMES- - -"
9999 LOAD ""


---------------------

1 REM Check 9000 for Timer
2 REM csscgc URL : https://spectrumcomputing.co.uk/forums/viewtopic.php?p=87703#p87703
3 REM v007b
5 PAPER 0: BORDER 0: INK 7: CLS 
10 GO SUB 5000: REM intro
20 GO SUB 2000: REM variable set
30 CLS 
80 IF INKEY$="1" THEN GO SUB 400
90 IF INKEY$="2" THEN GO SUB 300
100 IF INKEY$="0" THEN GO SUB 200
110 GO SUB 9000
120 GO TO 80
200 REM function manual() {
210 IF progress<100 THEN IF progress+speed>100 THEN LET progress=100
220 IF progress<100 THEN IF progress+speed<=100 THEN LET progress=progress+speed
230 GO SUB 1000
240 IF progress=100 THEN PRINT p$;" design is done! Go sell it!": LET isDone=1
250 RETURN 
300 REM sellProduct() {
310 IF (isDone=1 AND progress=100) THEN LET progress=0: LET totalMoney=totalMoney+(quality*10): LET quality=quality+1: GO SUB 1000: LET isDone=0
320 IF isDone=0 THEN PRINT AT 13,0;"The ";p$;" design isn't done yet, keep up the work!"
325 PRINT AT 15,0;"SOLD For ";quality*10
350 RETURN 
400 REM buySpeed()
410 IF speed=10 THEN LET speedCost=5
420 REM if  speed > 1 THEN LET speedCost = Math.floor(10 * Math.pow(1.1,speed)): Go SUB 1000
430 IF speed>1 THEN LET speedCost=INT (10*1.1^speed): GO SUB 1000
450 IF totalMoney>=speedCost THEN LET totalMoney=totalMoney-speedCost: LET speed=speed+1
455 PRINT AT 16,0;"BOUGHT ";speedCost;"   "
460 GO SUB 1000
490 RETURN 
1000 REM function refresh Display() { //this refreshes the display to update the numbers
1005 PAUSE 100: LET totalMoney=INT (totalMoney+INT (speed/10)): PAPER 0: INK 7: IF (totalMoney>1000000000) THEN GO TO 6000

1007 REM Print at 3,0;"DESIGN="; totalMoney;"  ";
1010 PRINT AT 0,0; INK 4;"MONEY=";totalMoney;"  "
1020 PRINT AT 1,0;"PROGRESS=";progress;"%   "
1030 PRINT AT 2,0; INK 2;"SPEED=";speed;"  (Hire cost=";speedCost;" ) "
1035 PRINT AT 3,0; INK 2;"Employees=";speed;"   "
1040 REM PRINT AT 3,0;"Speedcost="; speedCost;"   "
1050 PRINT AT 5,0; INK 3;"1=Hire employees for more speed"'"2=Sell ";p$;'"0=Design ";p$
1055 PRINT AT 10,0;"First Design a ";p$;" and then SELL it"
1090 RETURN 
2000 REM VARIABLES
2010 LET progress=0
2020 LET speed=10
2040 LET quality=1: REM // as quality increases, so does the $ made from selling a game
2050 LET isDone=0: REM  //checks to see if product is done.
2060 LET totalMoney=0
2070 LET speedCost=5
2100 LET p$="product"
2500 RETURN 
5000 CLS:PRINT ''"   Firelord Quality Products   "'"            PRESENTS       "'FLASH 1;'"  +-------------------------+  "'"  -- --IDLE BILLIONAIRE -- --  "'"  +-------------------------+  ";FLASH 0:PAUSE 0
5006 PRINT "Hello!!!"
5010 PRINT "Each one of us always wanted to become a billionaire!": PAUSE 100
5020 PRINT INK 2;TAB(6); FLASH 1;"THIS IS YOUR CHANCE!"; INK 7; FLASH 0: PAUSE 100
5030 PRINT "This simulator will show you in EASY steps  what you must do!": PAUSE 100
5040 PRINT "Actually Bill Gates used the    same technique and look at him  now!!": PAUSE 100
5050 PRINT "Anyway, this is a proven method! ": PAUSE 100
5060 PRINT "I trust this method so much that I'm willing to try it too! ": PAUSE 100
5100 PRINT "PRESS ANY KEY": PAUSE 0
5200 RETURN 
6000 REM WIN THE GAME - NOW YOU ARE READY FOR THE REAL LIFE!!!
6010 CLS : PRINT FLASH 1;"YOU WON !!!"'"YOU WON !!!"'"YOU WON !!!"'"YOU WON !!!"'"YOU WON !!!"'
6020 INPUT "PLEASE ENTER YOUR NAME:";b$
6030 PRINT "CONGRATULATIONS ";b$'"NOW YOU ARE READY FOR REAL LIFE!!!"'"SHUT DOWN YOUR COMPUTER"'"AND GO OUT TO THE REAL WORLD TO GET RICH!!! $$$$"
6040 STOP 


9000 REM COUNTER---
9005 LET count1sec=0:LET count10sec=0
9010 POKE 23672,0
9020 LET n=PEEK (23672)
9030 IF n<50 THEN GOTO 9020
9180 IF INKEY$="1" THEN GO SUB 400
9190 IF INKEY$="2" THEN GO SUB 300
9195 IF INKEY$="0" THEN GO SUB 200
9200 IF INKEY$="C" THEN LET totalMoney=totalMoney+5000 : REM CHEAT!!!
9235 LET count1sec=count1sec+1
9240 REM PRINT AT 4,0;"DEBUG Counter:";count1sec
9250 GO SUB 1000
9450 GOTO 9010