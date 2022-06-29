5 REM Deadly Warriors The Adventure v0.4e

10 REM A game written using advanced assembly techniques.
11 REM Source code is encrypted to look like a simple BASIC program but IT'S NOT.
12 REM (c) Firelord Quality Games LTD (trister12[at]yahoo[dot]gr - Put the word "SPECTRUM" somewhere in the subject line if you mail me )
13 REM 
14 REM ****Intro coding***
15 RANDOMIZE 
50 PAPER 3 : PRINT "DeAdLy WaRrIoRs - The Adventure": PAPER 7 
54 PAPER 5 : PRINT "A GAME OF STRATEGY,SKILL AND    some other important things that elude me right now...": PAPER 7
56 PRINT "A game that took 4.5 billion   years to be completed!!! "
65 INK 6 : PAPER 0: PRINT " Written by Firelord and J      - which happen to be the same person": INK 0 : PAPER 7
66 PRINT 
68 REM *****initialise control selection menu****
69 PRINT "Please select control method: "
70 PRINT "  1. Keyboard.": PRINT "  2. Wii controller connected to the PC.": PRINT "  3.or 4.  Mouse.": PRINT "  5. Mind control.": PRINT "  6. No control"
79 PRINT "Press ANY key - except BREAK"
80 PAUSE 0 : INK 3 : PRINT " Thank you for selecting Keyboard. Now press any key - Again": INK 0 : PAUSE 0
90 CLS 
99 REM ****Fight menu ****
100 BRIGHT 1 : PRINT "You are inside a ring with lot of people. You see 2 guys in the ring. What do you do?": BRIGHT 0
110 INK 1: PRINT "(1).KICK , (2).PUNCH,(3).SPECIAL ATTACK, (4). NOT-SO-SPECIAL ATTACK"
200 INK 0 : INPUT "SELECT MOVE :",M$
250 IF M$="1" THEN PRINT "You tried to kick your opponent ! ": GO SUB 2000 : GO TO 1050
300 IF M$="2" THEN PRINT "You tried to punch your opponent ! ": GO SUB 2000 : GO TO 1050
350 IF M$="3" THEN PAPER 4 : PRINT "You jump high in the air , the  camera starts moving arround you in slow motion. ": PAUSE 100 : PRINT "The opponent   wonders why you move in slow motion.": PAUSE 100
351 IF M$="3" THEN PRINT "You see your opponent being surrounded by question marks ?????? . ": GO SUB 2000 : GO TO 1050
360 REM GO SUB 2000
400 IF M$="4" THEN INK 2 : PRINT "Your move was so bad that the   opponent starts laughing... You try to find  something smart to say ": PAUSE 80: PRINT "...but ,you're not so smart... and you remember that this was the main the reason you became a fighter.": GO TO 1050
450 INK 5 : PRINT "You stand full of confidence in front of your oppoment wondering why the keyboards have more keys than just 4 and confuse fighters. "
455 PRINT "You start to plan in your head a keyboard with just the keys 1,2,3,4 especialy for fighting games. "
460 PRINT "Your opponent accidentally hit the correct button and HITS YOU. You fell down and you forget your amazing design!!."
1050 PAUSE 1000 : INK 0 : PAPER 7
1100 GO TO 100
1999 REM *** Advanced Algorythm that calculates the attack results ****
2000 PAPER 7: INK 0 : GO TO 2100+10*INT (RND*6)
2099 REM *** Language configuration ***
2100 INK 4 : PRINT "Your opponent blocked your attack.  (Actually, you missed          ...but this sounds better.)!!": RETURN 
2110 INK 2 : PRINT "You try to hit your opponent but he hits you between the legs !!! ": RETURN 
2120 INK 4: PRINT "You perform an amazing move,    impressing even yourself!!!": PAUSE 80: INK 6 : PAPER 2 : PRINT " You now lie down on the floor in  pain-but still impressed with your self !! (the opponent countered your attack)": RETURN 
2130 PRINT "You HIT HARD ...": PAUSE 100 : INK 2 : PRINT " ...the referee falls ... ": PRINT "Your  opponent counts to 10 ... ": PAUSE 80: PRINT "The referee lost the fight !!! You must wait now until a new referee arrives": PAUSE 100: RETURN 
2140 PRINT "You hit your opponent WHAMMMMBAMMMSWASH!!!": RETURN 
2150 INK 3 : PRINT "Your attack is very quick &     caught your opponent by surpise... ..": PAUSE 100 : PRINT ".but, you hit yourself. ": PAUSE 70
2151 PRINT "Someone from the crowd yells something like  'YOU SUCK!!' but he must be talking about someone else...": RETURN 
2160 PRINT "You start your lethal attack!!! While you're in the middle of your move, your opponent decides to avoid you so, he slowly moves to the left. You missed !!"
