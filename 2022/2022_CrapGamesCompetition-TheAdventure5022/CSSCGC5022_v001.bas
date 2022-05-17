5 REM Crap Games Competition 3009 (err.. 5022 I mean) - The Adventure v0.5b

10 REM A game written using advanced assembly techniques.
11 REM Source code is written in HiDDeN BASIC (TM) - You can't see all the program lines.
12 REM (c) Firelord Quality Games LTD (giatoula+zx[at]gmail[dot]com - Put the word "SPECTRUM" somewhere in the subject line if you mail me )
13 CLS 
14 REM ****Intro coding***
15 RANDOMIZE 
50 PAPER 4: FLASH 1: PRINT "  Crap Games Competition 4011   ": FLASH 0: PRINT "       - The Adventure -        ": PAPER 7
54 PAPER 5: PRINT "Will you be a crap judge or a   good judge of crapness ?": PAPER 7
56 PRINT "A game that transfers all the   excitement of being a judge of  CSSCGC from the safety of your       HOME. "
65 INK 6: PAPER 0: PRINT "Written by Firelord.": INK 0: PAPER 7: PAUSE 0
66 PRINT 
68 REM *****initialise control selection menu****
69 CLS : PRINT "Please select judge / year : "
70 GO SUB 4200
72 GO SUB 4400
73 REM INPUT "Please select judge / year : " ,j$
75 PAPER 7: INK 0:
83 INK 3: PRINT "Now press any key": INK 0: PAUSE 0
90 CLS : REM ***************GAMES SELECTION****************************
91 LET c=1: FLASH 1: PRINT "****Let the JUDGING BEGIN****": FLASH 0: PAUSE 50: REM game counter
93 REM ***Init Random Buttons ***
99 REM ****Games comments *****
100 REM GO SUB 5000 :REM
101 INVERSE 1: PRINT "--------------------------------": PRINT "You see a new game in front of  you. It's name seems to be      ": PRINT "        GAME #";c;"        ":: INVERSE 0
110 INK 0: PAPER 4: PRINT "Description : ": PAPER 7
120 GO SUB 4090
140 INK 0: PAPER 4: PRINT "Graphics can be described as : ": PAPER 7
150 GO SUB 5090
160 INK 0: PAPER 4: PRINT "Gameplay is : ": PAPER 7
170 GO SUB 5090
175 INK 0: PAPER 4: PRINT "Coding seems to be : ": PAPER 7
177 GO SUB 5090
180 INK 0: PAPER 4: PRINT "Documentation seems to be : ": PAPER 7
190 GO SUB 5090
1200 INK 0: BRIGHT 1: PRINT n$;" . How many crap points do you give to this game? :": INPUT "How many crap points do you give to this game? :",P$: BRIGHT 0
1201 LET c=c+1
1950 PAUSE 20: INK 0: PAPER 7
1952 IF c=10 THEN GO TO 2000
1960 GO TO 95
2000 
2010 FLASH 1: PRINT n$;: PRINT "You have voted. What is your verdict ?": FLASH 0
2015 INPUT "What is the CSSCGC winner this year? ",w$
2020 CLS : INK 5: FLASH 1: PRINT " THE WINNER IS GAME # ";w$: FLASH 0
2030 PRINT "You can restart the experience by typing RUN & (ENTER)"
2100 STOP 
3000 STOP 
4089 REM *** Advanced Algorythm that calculates the game description ****
4090 PAPER 7: INK 0: GO TO 4100+10*INT (RND*9)
4095 REM *** Language configuration ***
4100 INK 4: PRINT "Another brilliant game that you can't exactly understand what it is, what to do and the manual has pictures of another game..": RETURN 
4110 INK 4: PRINT "OMG , another game by FIRELORD!!! RUUUNNNNNNN!!! ": RETURN 
4120 INK 4: PRINT "It's a very original title that is a hack/ripoff of manic miner!": RETURN 
4130 INK 4: PRINT "A lawnmower simulator.From the author description seems very original.": RETURN 
4140 INK 4: PRINT "It's an exact copy of a game that was submitted last year and had the name changed from 2008 to 4011...": RETURN 
4150 INK 4: PRINT "its a game based on another game based on another game ,that was originaly based on another game.": RETURN 
4160 INK 4: PRINT "It is one of the pointless games that you must press a key to do nothing (possible winner).": RETURN 
4170 INK 4: PRINT "It's a game that... never mind. You're really bored and don't even load it. You could put a random rank in this game and still be ok.": RETURN 
4180 INK 4: PRINT "It is an amazing game written in ZX Python for the ZX81!": RETURN 
4190 INK 4: PRINT "It is a game with-an-very-big-name-that-has-no-goal-and-you-get-bored-before-you-load-it!.": RETURN 
4199 REM *** Judge selection list ***
4200 CLS : PAPER 3: PRINT "  Crap Games Competition 5022  ": PAPER 7
4205 PAPER 7: INK 0
4207 PRINT "The Judges :": RANDOMIZE 
4210 PRINT " 1 or 2. 1996 Judge Blood.": BRIGHT 1
4215 PRINT " 3. 1998 Judge Barry Salter.": BRIGHT 0
4220 PRINT " 4. 1999 Judges Alistair Nelson & Graham Goring.": BRIGHT 1
4225 PRINT " 5. 2000 Judge Graham Goring .": BRIGHT 0
4230 PRINT " 6. 2001 Judge Adam D. Moss .": BRIGHT 1
4235 PRINT " 7. 2002 Judge P.Equinox Collins": BRIGHT 0
4240 PRINT " 8. 2003 Judge Dave the Lurker .": BRIGHT 1
4245 PRINT " 9. 2004 Judge Jim Langmead .": BRIGHT 0
4250 PRINT "10. 2005 Judge Starglider .": BRIGHT 1
4355 PRINT "11. 2006 Judge Matt Rudge .": BRIGHT 0
4360 PRINT "12. 2007 Judges Chris Young & Phillip Lake .": BRIGHT 1
4362 PRINT "13. 2008 Judge Digital Prawn .": BRIGHT 0
4364 PRINT "14. 2009 Judge Guesser .": BRIGHT 1
4366 PRINT "15. 2010 Judge BloodBaz .": BRIGHT 0
4368 PRINT "16. 2011 Judge Arda.": BRIGHT 1
4370 PRINT "17. 2012 Judge The Mojon Twins.": BRIGHT 0
4372 PRINT "18. 2013 Judge R-Tape.": BRIGHT 1
4374 PRINT "19. 2014 Judge MykeP.": BRIGHT 0
4376 PRINT "20. 2015 Judge Lee Prince.": BRIGHT 1
4378 PRINT "21. 2016 Judges Gabriele Amore and Simon M. Ferre.": BRIGHT 0
4380 PRINT "22. 2017 Judge GReW.": BRIGHT 1
4382 PRINT "23. 2018 Judge Catmeows.": BRIGHT 0
4384 PRINT "24. 2020 Judge John Connolly.": BRIGHT 1
4386 PRINT "25. 2021 Judge TMD2003.": BRIGHT 0
4388 PRINT "26. 2022 Judge Uglifruit.": BRIGHT 1

4390 PRINT "50. ???? Vah-Ka the Almighty .": BRIGHT 0: INK 0
4392 PRINT "51. 5022 Judge GOD ."

4399 RETURN 
4400 REM *** accept judge selection ***
4405 INPUT "Please select Judge by typing the CORRECT NUMBER!! : ",j$
4407 PAPER 6: INK 4
4410 IF j$="1" THEN PRINT "You selected year 1996 & you are Judge Blood.": LET n$="Judge Blood": RETURN 
4420 IF j$="2" THEN PRINT "You selected year 1997 & you are Judge Blood.": LET n$="Judge Blood": RETURN 
4430 IF j$="3" THEN PRINT "You selected year 1998 & you are Judge Barry Salter.": LET n$="Judge Barry Salter": RETURN 
4440 IF j$="4" THEN PRINT "You selected year 1999 & you are Judges Alistair Nelson & Graham Goring.": LET n$="Judges Alistair Nelson & Graham Goring": RETURN 
4450 IF j$="5" THEN PRINT "You selected year 2000 & you are Judge Graham Goring .": LET n$="Judge Graham Goring": RETURN 
4460 IF j$="6" THEN PRINT "You selected year 2001 & you are Judge Adam D. Moss .": LET n$="Judge Adam D. Mos": RETURN 
4470 IF j$="7" THEN PRINT "You selected year 2002 & you are Judge Paul Equinox Collins .": LET n$="Judge Paul Equinox Collins": RETURN 
4480 IF j$="8" THEN PRINT "You selected year 2003 & you are Judge Dave the Lurker .": LET n$="Judge Dave the Lurker": RETURN 
4490 IF j$="9" THEN PRINT "You selected year 2004 & you are Judge Jim Langmead .": LET n$="Judge Jim Langmead": RETURN 
4500 IF j$="10" THEN PRINT "You selected year 2005 & you are Judge Starglider .": LET n$="Judge Starglider": RETURN 
4510 IF j$="11" THEN PRINT "You selected year 2006 & you are Judge Matt Rudge .": LET n$="Judge Matt Rudge": RETURN 
4520 IF j$="12" THEN PRINT "You selected year 2007 & you are Judges Chris Young & Phillip Lake .": LET n$="Judges Chris Young & Phillip Lake": RETURN 
4530 IF j$="13" THEN PRINT "You selected year 2008 & you are Judge Digital Prawn .": LET n$="Judge Digital Prawn": RETURN 
4540 IF j$="14" THEN PRINT "You selected year 2009 & you are Judge Guesser .": LET n$="Judge Guesser": RETURN 
4550 IF j$="15" THEN PRINT "You selected year 2010 & you are Judge BloodBaz .": LET n$="Judge BloodBaz": RETURN 
4560 IF j$="16" THEN PRINT "You selected year 2011 & you are The Mojo Twins ??? (Dual Personality) .": LET n$="MojoTwins": RETURN 
4570 IF j$="17" THEN PRINT "You selected year 2012 & you are Judge Arda .": LET n$="Judge Arda": RETURN 
4580 IF j$="18" THEN PRINT "You selected year 2013 & you are Judge R-Tape .": LET n$="Judge R-Tape": RETURN 
4590 IF j$="19" THEN PRINT "You selected year 2014 & you are Judge MykeP .": LET n$="Judge MykeP": RETURN 
4600 IF j$="20" THEN PRINT "You selected year 2015 & you are Judge Lee Prince .": LET n$="Judge Lee Prince": RETURN 
4610 IF j$="21" THEN PRINT "You selected year 2016 & you are Judges Gabriele Amore and Simon M. Ferre .": LET n$="Judges Amore&Ferre": RETURN 
4620 IF j$="22" THEN PRINT "You selected year 2017 & you are Judge GReW .": LET n$="Judge GReW": RETURN 
4630 IF j$="23" THEN PRINT "You selected year 2018 & you are Judge Catmeows .": LET n$="Judge Catmeows": RETURN 
4640 IF j$="24" THEN PRINT "You selected year 2020 & you are Judge John Connolly .": LET n$="Judge John Connolly": RETURN 
4650 IF j$="25" THEN PRINT "You selected year 2021 & you are Judge TMD2003 .": LET n$="Judge TMD2003": RETURN
4670 IF j$="26" THEN PRINT "You selected year 2022 & you are Judge Uglifruit .": LET n$="Judge Uglifruit": RETURN


4700 IF j$="50" THEN PRINT "You selected year 4011 & you are Vah-Ka the Almighty (TM).": LET n$="-Vah-Ka the Almighty-": RETURN 
4710 IF j$="51" THEN PRINT "You selected year 5022 & you are GOD .": LET n$="-Mr. Judge GOD-": RETURN 


4896 PRINT "Your Character stats are : STR:5 ,AGI:7, INT:7 ,CHA:2, LUCK: 1,SNEAK:6 "
4899 GO TO 4400
5089 REM *** Advanced Algorithm that calculates the game statement ****
5090 PAPER 7: INK (RND*6): GO TO 5100+10*INT (RND*7)
5095 REM ***  ***
5100 PRINT "more than crap.": RETURN 
5110 PRINT "crap. ": RETURN 
5120 PRINT "awful.": RETURN 
5130 PRINT "Sitting in a white room with    white clothes for 2 years seems more interesting.": RETURN 
5140 PRINT "incredibly bad.": RETURN 
5150 PRINT "can't even describe.": RETURN 
5180 PRINT "not worth mentioning.": RETURN 
