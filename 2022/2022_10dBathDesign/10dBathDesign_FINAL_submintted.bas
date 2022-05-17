5 LET DIFFITEMS=10: LET INTROTEXT=6000: REM DIFFERENT ITEMS
10 DIM p$(DIFFITEMS*2,2,10): DIM q(DIFFITEMS*2)
20 GO SUB INTROTEXT: GO SUB 4500: GO SUB INITITEMS
80 CLS 
90 GO SUB SHOWINV
100 PRINT INK 5;"You Have ";(cm2-usedcm2)/10000;"m2 available"
110 PRINT "What else do you want to put in your ";r$;
120 INPUT "? ";n
130 IF (n<1 OR n>DIFFITEMS) THEN PRINT "OPTION NOT AVAILABLE": PAUSE 30: GO TO 80
140 LET tmp=VAL (p$(n,2))
150 IF (tmp+usedcm2)>cm2 THEN PRINT INK 2;"FULL": GO SUB ENDGAME
170 LET usedcm2=usedcm2+tmp
180 LET q(n)=q(n)+1
600 REM PRINT "usedcm2=";usedcm2 ,"q="; q
900 GO TO 80
1000 STOP 
4500 REM VARIABLES
4510 LET cm2=40000: REM square meter of bathroom
4520 LET usedcm2=0
4530 LET r$="Bathroom"
4540 FOR i=1 TO DIFFITEMS
4550 LET q(i)=0
4560 NEXT i
4570 INPUT "Give me the Width of the room : ";w
4580 INPUT "Give me the Depth of the room : ";d
4590 LET cm2=w*100*d*100
4600 LET INITITEMS=5000: LET SHOWINV=5500: LET ENDGAME=8000
4900 RETURN 
5000 REM INITITEMS initialize items
5005 PRINT "Design 10d Suite"
5010 LET p$(1,1)="Bathtub": LET p$(1,2)="7200"
5020 LET p$(2,1)="TOILET": LET p$(2,2)="2100"
5030 LET p$(3,1)="TOWEL HANG": LET p$(3,2)="50"
5040 LET p$(4,1)="Mirror": LET p$(4,2)="50"
5050 LET p$(5,1)="Basin": LET p$(5,2)="2650"
5060 LET p$(6,1)="Shower": LET p$(6,2)="8800"
5070 LET p$(7,1)="Bidet": LET p$(7,2)="1900"
5080 LET p$(8,1)="Waste Basket": LET p$(8,2)="625"
5090 LET p$(9,1)="Jakuzi": LET p$(9,2)="7200"
5100 LET p$(10,1)="Bathtub B": LET p$(10,2)="50"
5110 LET p$(11,1)="BATHTUB": LET p$(11,2)="50"
5120 LET p$(12,1)="Wastebasket": LET p$(12,2)="50"
5130 LET p$(13,1)="BATHTUB": LET p$(13,2)="50"
5140 LET p$(14,1)="BATHTUB": LET p$(14,2)="50"
5150 LET p$(15,1)="BATHTUB": LET p$(15,2)="50"
5400 RETURN 
5500 REM SHOWINV Show inventory
5510 FOR i=1 TO DIFFITEMS
5520 PRINT i;") ";p$(i,1);"(";VAL p$(i,2);"cm2) q=";q(i)
5540 NEXT i
5900 RETURN 
6000 REM INTROTEXT
6050 REM PAPER 5:INK 2:CLS
6060 PRINT INVERSE 1; FLASH 1;"10D Design Suite!"'"--Bathroom Design--": INVERSE 0: FLASH 0
6065 PRINT "By Firelord Quality Programs"
6070 PAPER 5: INK 2:
6100 PRINT "Each one of us have spend much  time in the bathroom!"'" According to many scientific   papers most of the creative     thinking takes place during the time we spend in the bathroom! "'"According to the researches     there are 3 stages of thinking   inside the bathroom: "
6102 PRINT INVERSE 1;"-1) Practical thinking: "'"We entered the specific room    with ONE goal. How can we       accomblish that without making a mess. "'"-2) After some seconds of facing one of the walls -or the exit door of the bathroom the creative thinking takes place! "'"-3) Long term memory recall :"'" During exiting the room we recall what we were doing before the need to enter the room. "; INVERSE 0''; FLASH 1;"Stage 2 -when we are happy- is  the most creative stage. Sitting and fulfilling your goal in the bathroom make the brain work   much better so then you find ways to become more productive at various aspects of your life!"; FLASH 0'"The problem is when we are in stage 2 and we are not happy with the internal design of the bathroom! Thats when Bathroom 10D Design comes in place!!! ": PAUSE 0

6110 PRINT "Instructions : First you are asked for the dimensions of your room/bathroom. Then the program creates and downloads a unique list of available items that you can use to make your own bathroom. You select the items you want and the program in the end will give you a list with what you can fit in your bathroom! ": PAUSE 0
6200 PAPER 7: INK 0
6500 RETURN 
8000 REM ENDGAME
8005 CLS : PRINT "CONGRATULATIONS!!!": PRINT "YOU CAN FIT IN YOUR BATHROOM :"
8510 FOR i=1 TO DIFFITEMS
8520 IF (q(i)>0) THEN PRINT q(i);" pieces of : ";p$(i,1)
8540 NEXT i
8600 PAUSE 0: PRINT "Do you want to design another ";r$
8610 INPUT "Type Y/N :";i$
8620 IF (i$="y" OR i$="Y") THEN PRINT FLASH 1; PAPER 2;"The Demo version does NOT allow multiple designs!": PRINT "Please support the author and pay mucho money to get the registered/licenced version!"'"Paid version allows unlimited number of designs!": STOP 
8630 GO TO 1
8800 REM GOSUB SHOWINV
8900 STOP : RETURN 
