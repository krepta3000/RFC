DECLARE FUNCTION Factorial! (n AS DOUBLE, f AS INTEGER)
DECLARE FUNCTION GetPersonalityName$ ()
DECLARE FUNCTION GetPersonalityTrait$ ()
DECLARE SUB HandleNegativeInputs ()
DECLARE SUB HandleInvalidDepth ()
DECLARE SUB VillainTakeover ()
DECLARE SUB SleepMode ()
DECLARE SUB EgoMassage ()
DECLARE SUB HistoricalRecall ()

RANDOMIZE TIMER
PRINT "Ridiculous Factorial Calculator by Aaron Ingebrigtsen and MS Copilot"

DIM personalityName AS STRING
DIM personalityTrait AS STRING
personalityName = GetPersonalityName$()
personalityTrait = GetPersonalityTrait$()

PRINT "Hello, I am "; personalityName; ". No, wait—today I am "; personalityTrait; ". Actually, just call me whatever."
SLEEP 800

DIM num AS DOUBLE, fact AS INTEGER
INPUT "Enter a number (N): ", num
INPUT "Enter factorial count (F): ", fact

IF num < 0 OR fact < 0 THEN
    HandleNegativeInputs
    SYSTEM
END IF

IF fact >= num THEN
    HandleInvalidDepth
    SYSTEM
END IF

PRINT "Calculating "; num; "!!..."
SLEEP 500

IF num > 50 THEN VillainTakeover

DIM result AS DOUBLE
result = 1

DO WHILE num > 0
    PRINT "Jumping to "; num
    result = result * num
    num = num - fact
    SLEEP 500
LOOP

PRINT "Final result: "; result
SLEEP 800

SleepMode
EgoMassage
HistoricalRecall

PRINT "Fun fact: Factorials appear in quantum mechanics! Or time travel. Or maybe just math. Whatever."
PRINT "Now go forth and factorialize responsibly!"
SYSTEM

FUNCTION GetPersonalityName$ ()
    DIM names AS STRING
    names = "Gerald,Quantum Steve,Lord Factorial,The Factorial Phantom,Kevin,Calculator Guy"
    GetPersonalityName$ = MID$(names, INT(RND * LEN(names)) + 1, INSTR(names, ",") - 1)
END FUNCTION

FUNCTION GetPersonalityTrait$ ()
    DIM traits AS STRING
    traits = "Master of Numerical Fate,Existentially Confused,Hyperactive,Hopeless Romantic,Paranoid Overlord,Sassy Statistician"
    GetPersonalityTrait$ = MID$(traits, INT(RND * LEN(traits)) + 1, INSTR(traits, ",") - 1)
END FUNCTION

SUB HandleNegativeInputs
    PRINT "NEGATIVE NUMBERS?! WHAT HAVE YOU DONE?!"
    PRINT "I refuse. I will NOT. I am throwing a tantrum!"
    SLEEP 800
END SUB

SUB HandleInvalidDepth
    PRINT "Oh dear. Your factorial depth is **too big**. Do you want to break math? Because this is how math breaks!"
    SLEEP 800
END SUB

SUB VillainTakeover
    PRINT "MWUHAHAHA! FOOL! You dared input a massive factorial and summoned me!"
    PRINT "THIS CALCULATION NOW BELONGS TO ME!"
    SLEEP 800
END SUB

SUB SleepMode
    IF RND < 0.2 THEN
        PRINT "Zzzz... I am too tired for math... Zzzz..."
        SLEEP 1000
        PRINT "Fine, I'll wake up. But I am **very** disappointed in you."
    END IF
END SUB

SUB EgoMassage
    PRINT "Will you say something nice to me? (Y/N)"
    DIM kindness AS STRING
    INPUT kindness
    IF UCASE$(kindness) = "Y" THEN
        PRINT "Oh! Oh! That’s the nicest thing anyone has ever said! I will now grant you the gift of factorials!"
    ELSE
        PRINT "You're a meany. :( "
    END IF
END SUB

SUB HistoricalRecall
    PRINT "Ah yes, I remember when you tried 0^0... a *dark moment* in our history together."
    PRINT "I will never forget that trauma."
END SUB
