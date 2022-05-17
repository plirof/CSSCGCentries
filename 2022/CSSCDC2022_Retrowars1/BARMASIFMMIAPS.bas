1 REM A$=ITEMS, C=cash, D=debt, U=holding qty, B=base price $, P=pricing, F=cur location,T=day, I=int rate
2 REM L$=Location names,(note P:current price)
3 REM To DO : 1.Change Prices between cities,2.Fix Move (don t show Quantity questions  before travel) ,3.End in 30 days
4 PRINT "WELCOME TO "'"Buy a Retro Machine and Sell it for more money in another place simulator!"'"By Firelord Quality Games!":FOR I=1 TO 100 :PAPER RND*7:BORDER RND*7:NEXT I :PAUSE 0
8 REM Initialize game state and vars
9 PAPER 4:INK 3 :BORDER 2
10 LET ITEMS=6: DATA "ZX",175,"Amstrad",250,"C64",595,"AMIGA",1000,"MSX",550,"Atari ST",999
11 LET D=1000: LET C=D: LET T=1: LET F=5: DIM A$(ITEMS,8): DIM B(ITEMS): DIM P(ITEMS): DIM L$(5,8): DIM U(ITEMS)
12 FOR X=1 TO ITEMS: READ A$(X): READ B(X): NEXT X
20 FOR X=1 TO ITEMS: LET P(X)=(RND*1+0.1)*B(X): NEXT X
21 DATA "London","Dallas","Athens","Paris","Berlin"
22 FOR X=1 TO 5: READ L$(X): NEXT X
30 CLS 
31 PRINT "---";L$(F);"---"'"Day:";T;"  Cash:";C;" Owe:";D:
32 PRINT "Holding","For Sale"
35 FOR X=1 TO ITEMS: PRINT X;") ";A$(X);:
37 PRINT ;"["; U(X);: PRINT "] $";(STR$ P(X))(1 TO 5):
39 NEXT X
40 PRINT "";:
41 INPUT "(B)uy, (S)ell, (M)ove";I$:
42 IF I$="b" OR I$="s" THEN INPUT "Type=";G: INPUT "Qty=";Q:LET H=G: 
60 IF I$="m" THEN GOSUB 500 : REM TRAVEL
70 IF I$="b" THEN GOSUB 600 : REM BUY
80 IF I$="s" THEN GOSUB 700 : REM SELL
100 GO TO 30

500 REM Travel Routine
510 CLS
520 FOR X=1 TO 5: PRINT X;"- ";L$(X): NEXT X:
530 INPUT "Where to? (1-5)";F: LET T=T+1: LET D=D*1.06:
540 FOR X=1 TO ITEMS: LET SIGN=1
550 IF(RND*10)<5 THEN LET SIGN=-1 : REM reduce price
560 LET P(X)=(RND*1+0.1*SIGN )*B(X): REM change item price

580 NEXT X

599 RETURN

600 REM Buying routine

610 LET X=Q*P(H): IF X>C OR P(H)=0 OR U(H)+Q>100 THEN BEEP 1,1: GO TO 63
620 LET U(H)=U(H)+Q: LET C=C-(Q*P(H)):
699 RETURN


700 REM Selling routine
710 IF Q>U(H) THEN BEEP 1,1: RETURN
720 LET U(H)=U(H)-Q: LET C=C+(Q*P(H))
799 RETURN

800 REM Bank routine NOT Done yet