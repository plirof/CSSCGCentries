2 REM ver 211130c
200 PAPER 4: PRINT "Welcome to Finding EasterBunny Holiday Game (which is very different and done with a different game engine than FindingSanta": PAUSE 100
205 PRINT "Thank you for paying money to buy this amazing holiday game!"'"The game features RPG elements. You select different characters with different behaviour!  "'"Some characters can always find EasterBunny and will never find him!!! Choose wisely!": PAUSE 100
210 PRINT "Story so far:"'"There was a boy!"'"It woke up very early one morning."'"It wanted to find his lost sock."'"He found the sock near the fireplace."'"The boy tried to wear the sock."'"The sock has something in it."'"It was an egg."'"Someone told him that a weird bunny wearing red clothes climbed his roof and chimney last night.. "''"That's how the legend of 'EasterBunny Claws' was born.": PAUSE 100
220 PRINT "EasterBunny Claws was shot later that week because he was a drunk that did weird things with children socks and always left them a surprise present inside the sock!"'"After many-many years a group of people now named 'flat earth believers' did not believe that EasterBunny Claws was a pervert and it was actually a nice old grandpa with white beard that had animals that could fly. "'"At the begging there was only one animal :"'" 'Adolf the Green Eared Mole' (there are similar references to the Myth of Santa Claus!)  but then (again after some years) it switched to 'Yellow Rain Eel' and finally we ended without any animal frieds because all animals (even the turtle) were already present in other stories and had copyright issues! "'"Also EasterBunny was renamed later to just EasterBunny cause of copyright reasons!": PAUSE 100
230 PRINT "The game :"'"It's Easter time again and someone told you that EasterBunny Is in a house nearby hiding from the police."'"You begin your journey to find EasterBunny!": PAUSE 100
240 PRINT "Controls:"'"1. Keys."'"2. Voice control (requires the Sinclair Voice Extension with the 64bit drivers)": PAUSE 100
250 PAUSE 0: PAUSE 1000
505 PAPER 2
510 CLS : RANDOMIZE 
511 PRINT "An interactive Adventure/Role playing game"'"Created by Firelord Quality Games (tm)(c) (etc)": PRINT "EasterBunny is lost inside the house"'"You take the role of one of the characters and you must find him"'"SELECT your character "'"1.ELf,"'"2.Human,"
512 PRINT "3.Mrs EasterBunny"'"4.Evil Troll"'"5.Covid Unvaxinated dude"'"6.Covid Vaxinated dude"'"7.Covid Mut Delta"'"8. Covid Mut Omicron "'"9. Covid Mut Omega !!!"'"10. Batman"'"11. Bad boy "'"12. Good Boy "
514 INPUT "Make your selection : ",a$
515 PRINT "Thank you for your selection"'"====================================="
520 PRINT "Search (again) for EasterBunny"
530 PRINT "options :"
540 PRINT "1.Bathroom"'"2.Bedroom"'"3.Living Room"'"4.GuestRoom"'"5.Chimney"'"6.Wait where you are"
542 LET s$=STR$ (INT ((RND*5))+1)
544 REM PRINT "CHEATER SAYS:";EasterBunnylocation$
546 IF (a$="3") THEN LET s$="0"
550 INPUT "Where to search for EasterBunny?";s$
554 IF (a$="10") THEN GO TO 590
560 IF (s$<>a$) THEN PRINT "NOPE!!!": GO TO 520
590 PAPER RND*7: CLS 
5100 PRINT "You found EasterBunny": GO TO 511
