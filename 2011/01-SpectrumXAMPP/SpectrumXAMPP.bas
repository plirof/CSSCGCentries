5 REM SpectrumXAMPP - v0.005

10 REM A game written using advanced assembly techniques.
11 REM Source code is encrypted to look like a simple BASIC program but IT'S NOT.
12 REM (c) Firelord Quality Games LTD (trister12[at]yahoo[dot]gr - Put the word "SPECTRUM" somewhere in the subject line if you mail me )
13 CLS 
14 REM ****Intro coding***
15 RANDOMIZE : PAPER 0 : INK 7: BORDER 0
50 PAPER 0: FLASH 1 : PRINT "XAMPP port for Spectrum 2010(c) ": FLASH 0: PAPER 0
54 PAPER 0: PRINT "Many people know from their own experience that it's not easy to install an Apache web server and it gets harder if you want to add MySQL, PHP and Perl."
55 PRINT "XAMPP is an easy to install Apache distribution containing MySQL, PHP and Perl. XAMPP is really very easy to install and to use - just download, extract and run it on a spectrum."
56 FLASH 1: PRINT "This is NOT a game. It's a developer tool ": FLASH 0 
65 INK 6: PAPER 0: PRINT "Ported & Compiled for Spectrum by Firelord.": INK 7: PAPER 0 : PAUSE 0
66 PRINT : LET c = 100: PAUSE 500
68 REM *****initialise control selection menu****
69 CLS : PRINT "*****initialise control selection menu****"
70 GO SUB 4200 : REM STARTING XAMPP SCREEN
71 
72 REM 
75 PAPER 0: INK 7:
90 REM ***************INITIAL INTRO****************************
99 REM ****comments *****
101 PRINT "--------------------------------": PAUSE 300
140 INK 6 : PAPER 0 : PRINT "The Following message has been  added to log.txt : ": PAPER 0
150 GO SUB 5090
1200 INK 7: BRIGHT 1 : PRINT "": BRIGHT 0
1201 LET c=c-15
1950 PAUSE 20: INK 7: PAPER 0
1952 IF c<0  THEN GO TO 2000
1960 GO TO 95
2000 
2020 CLS : INK 5 : FLASH 1 : PRINT "COMPLETE SYSTEM FAILURE!!!": FLASH 0
2030 PAUSE 0 : PRINT "Thank you for playing!!! You can restart XAMPP by typing RUN & (ENTER)"
2100 STOP 
3000 STOP 
4199 REM *** ####### selection list ***
4200 CLS : PAPER 0: BORDER 0: PRINT "Diese Eingabeforderung nicht waehrend des Runnings beenden ...": FLASH 0 
4202 PRINT "Zum stoppen bitte die xampp_stop benutzen!  "
4203 PRINT "Please do not close this window while running ...  "
4204 PRINT : PRINT "Use the xampp_stop for shutdown!  "
4210 PRINT : FLASH 1 : PRINT "Please wait [Bitte warten] ...": FLASH 0 
4215 PAUSE 50: PRINT : PRINT "### APACHE + MYSQL IS STARTING  NOW ###  "
4220 PRINT "  "
4225 PRINT "--------------------------------":
4230 PRINT "Note: Due to hardware limitations MySQL,Apache,PHP & Perl might not function as expected..."
4235 PAPER 0: INK 7
4237 RANDOMIZE 
4333 PRINT ""
4340 RETURN 
4400 REM *** accept ####### selection ***
4405 PRINT "*** accept ####### selection ***"
4407 PAPER 0 : INK 7
4495 RETURN 
4499 GO TO 4400
5089 REM *** Advanced Algorithm that detects server error ****
5090 PAPER 0: INK 7: GO TO 5100+10*INT (RND*10)
5095 REM ***  ***
5100 PRINT "Extremely Fatal Error!!!": RETURN 
5110 PRINT "Apache does not support the INKEY$ command. Please, rephrase.": RETURN 
5120 PRINT "Blue Screen Error": RETURN 
5130 PRINT "Out of Virtual Memory! Please,  Insert a 70 minute tape in your tape recorder!": RETURN 
5140 PRINT "There seems to be a problem with the Spectrum Firewall. Please  open port 80 & 8080.": RETURN 
5150 FLASH 1: PRINT "No error found!!!": FLASH 0: PRINT "This is kind of strange ,so it  had to be entered in the logs...": RETURN 
5160 FLASH 1: PRINT "Critical error found!!!": FLASH 0: PRINT "Please,connect your network cable for remote debugging.": RETURN 
5170 FLASH 1: PRINT "Fatal error found!!!": FLASH 0: PRINT "You're not using a registered version": RETURN 
5180 PRINT "R Tape Loading Error!!! Please, insert a formated tape to your tape recorder!!!": RETURN 
5190 PRINT "MySQL injection attack!!! Please, learn how to program !!!": RETURN 
5200 PRINT "Keyboard error!!! Please, click on your keyboard to continue!!!": RETURN 
5400 PRINT "Error!!! Please, be more careful next time !!!": RETURN 
