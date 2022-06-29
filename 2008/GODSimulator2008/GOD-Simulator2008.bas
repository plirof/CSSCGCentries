5 REM GOD simulator 2008 

10 REM A game written using advanced assembly techniques.
11 REM Source code is encrypted to look like a simple BASIC program but IT'S NOT.
12 REM (c) Firelord Quality Games LTD (trister12[at]yahoo[dot]gr - Put the word "SPECTRUM" somewhere in the subject line if you mail me )
13 CLS 
14 REM ****Intro coding***
15 RANDOMIZE 
50 PAPER 3: PRINT "      GOD simulator 2008        ":
56 PAPER 4: INVERSE 1 : FLASH 1 : PRINT "'In the beginning God created     the heavens and the earth...' ": INVERSE 0 : FLASH 0
65 INK 6: PAPER 0: PRINT "      Written by Firelord.      ": INK 0: PAPER 7 : PAUSE 0
70 PRINT "Have you ever wanted to know what would happen if GOD didn't design the world as it is now?"
75 PRINT "How would the sky look if it was different? "
80 INK 6: PAPER 0: PRINT "Now you can relive all the EPIC CREATION playing the role of GOD"
85 PRINT "Let there be light (Press any key).": INK 0: PAPER 7 : PAUSE 0
90 CLS 
100 LET c$="*"
110 PAPER 3 : PRINT AT 0,0;"God created the:Stars ": PAPER 7: PAUSE 30
120 LET x=12 : LET y=12
1200 PRINT AT x,y;c$
2250 LET x=1+INT (RND*20) : LET y=INT (RND*31)
2300 PAPER 4: PRINT AT 0,0;"Then God created the: ";c$;"     ": PAPER 7
2500 IF INKEY$<>"" THEN LET c$=INKEY$
2510 REM IF INKEY$ <>"" THEN GO TO 1200 
2550 REM IF INKEY$ ="" THEN LET c$=INKEY$
4500 GO TO 1200
