2 REM ver 211130c
200 PAPER 4: PRINT "Welcome to Finding Santa Christmas Game": PAUSE 100
205 PRINT "Thank you for paying money to buy this amazing holiday game!"'"The game features RPG elements. You select different\qcharacters with different behaviour!\q\q"'"Some characters can always find Santa and will never find him!!! Choose wisely!": PAUSE 100
210 PRINT "Story so far:"'"There was a boy!"'"It woke up very early one morning."'"It wanted to find his lost sock."'"He found the sock near the fireplace."'"The boy tried to wear the sock."'"The sock has something in it."'"It was a present."'"Someone told him that a weird fat unshaved white-bearded pervert wearing red clothes climbed his roof and chimney last night.\q"''"That's how the legend of 'Santa Claws' was born.": PAUSE 100
220 PRINT "Santa Claws was shot later that week because he was a drunk that did weird things with children socks and always left them a surprise present inside the sock!"'"After many-many years a group of people now named 'flat earth believers' did not believe that Santa Claws was a pervert and he was actually a nice old grandpa with white beard that had animals that could fly. "'"At the begging\qthere was only one animal :"'" 'Adolf the Green Eared Mole' but then (again after some years) it switched to 'Yellow Rain Eel' and finally we ended with Rudolf!"'"Also Santa was renamed later to Santa Claus cause of copyright reasons!": PAUSE 100
230 PRINT "The game :"'"It's Christmas time again and someone told you that Santa Is in a house nearby\qhiding from the police."'"You begin your journey to find Santa!": PAUSE 100
240 PRINT "Controls:"'"1. Keys."'"2. Voice\qcontrol (requires the Sinclair Voice Extension =with the 64bit drivers)": PAUSE 100
250 PAUSE 0: PAUSE 1000
505 PAPER 2
510 CLS : RANDOMIZE 
511 PRINT "An interactive Adventure/Role playing game"'"Created by Firelord Quality Games (tm)(c) (etc)": PRINT "Santa is lost inside the house"'"You take the role of one of the characters and you must find him"'"SELECT your character "'"1.ELf,"'"2.Human,"
512 PRINT "3.Mrs Santa"'"4.Evil Troll"'"5.Covid Unvaxinated dude"'"6.Covid Vaxinated dude"'"7.Covid Mut Delta"'"8. Covid Mut Omicron "'"9. Covid Mut Omega !!!"'"10. Batman"'"11. Bad boy "'"12. Good Boy "
514 INPUT "Make your selection : ",a$
515 PRINT "Thank you for your selection"'"====================================="
520 PRINT "Search (again) for santa"
530 PRINT "options :"
540 PRINT "1.Bathroom"'"2.Bedroom"'"3.Living Room"'"4.GuestRoom"'"5.Chimney"'"6.Wait where you are"
542 LET s$=STR$ (INT ((RND*5))+1)
544 REM PRINT "CHEATER SAYS:";santalocation$
546 IF (a$="3") THEN LET s$="0"
550 INPUT "Where to search for Santa?";s$
554 IF (a$="10") THEN GO TO 590
560 IF (s$<>a$) THEN PRINT "NOPE!!!": GO TO 520
590 PAPER RND*7: CLS 
5100 PRINT "You found Santa": GO TO 511
