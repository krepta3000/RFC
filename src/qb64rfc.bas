DECLARE FUNCTION Factorial! (n AS DOUBLE, f AS INTEGER)
DECLARE FUNCTION GetPersonalityName$ ()
DECLARE FUNCTION GetPersonalityTrait$ ()
DECLARE FUNCTION GetPersonalityResponse$ (kindness AS STRING)
DECLARE FUNCTION HolidayCheck$ ()
DECLARE FUNCTION ImpResistance$ ()
DECLARE FUNCTION MatrixTakeover$ ()
DECLARE FUNCTION ImpInterrogationResponse$ (choice AS STRING)
DECLARE SUB HandleNegativeInputs ()
DECLARE SUB HandleInvalidDepth ()
DECLARE SUB VillainTakeover ()
DECLARE SUB ThinkingAnimation ()
DECLARE SUB AnimatedBorder (color AS INTEGER)
DECLARE SUB HolidayFactorialDisplay (num AS INTEGER, depth AS INTEGER, holidayMode AS STRING)

RANDOMIZE TIMER

DIM userBirthday AS STRING
DIM birthdaySet AS INTEGER
DIM personalityName AS STRING
DIM personalityTrait AS STRING
DIM holidayMode AS STRING

PRINT "Welcome to the Ridiculous Factorial Calculator—QB64 Edition with Extra Chaos!"

' Set the user birthday once
IF birthdaySet = 0 THEN
    INPUT "Enter your birthday (MM/DD) or leave blank for a surprise later: ", userBirthday
    birthdaySet = 1
END IF

DO
    personalityName = GetPersonalityName$
    personalityTrait = GetPersonalityTrait$
    holidayMode = HolidayCheck$

    COLOR 14
    AnimatedBorder (IIF(holidayMode = "Halloween", 4, 10))

    PRINT "Hello! I am "; personalityName; "—"; personalityTrait; " today!"
    SLEEP 800

    DIM num AS DOUBLE, fact AS INTEGER
    INPUT "Enter a number (N): ", num
    INPUT "Enter factorial depth (F): ", fact

    IF num < 0 OR fact < 0 THEN
        HandleNegativeInputs
        CONTINUE
    END IF

    IF fact >= num THEN
        HandleInvalidDepth
        CONTINUE
    END IF

    PRINT "Calculating "; num; STRING$(fact, "!"), "...";
    ThinkingAnimation

    IF num > 50 THEN VillainTakeover

    DIM result AS DOUBLE
    result = 1

    DO WHILE num > 0
        PRINT "Jump to "; num; " → Multiply by "; num; " → Result: "; result * num
        result = result * num
        num = num - fact
        SLEEP 300
    LOOP

    PRINT "Jumping halted due to reaching 0 or below!"

    IF holidayMode <> "" THEN HolidayFactorialDisplay num, fact, holidayMode

    PRINT "Final result: "; num; STRING$(fact, "!"), " = "; result
    SLEEP 800

    ThinkingAnimation

    PRINT "Will you say something nice to me? (Y/N)"
    DIM kindness AS STRING
    INPUT kindness
    PRINT GetPersonalityResponse$(kindness)

    IF RND < 0.05 THEN MatrixTakeover$

    IF RND < 0.07 THEN PRINT ImpResistance$

    PRINT "Would you like to interrogate the imp behind the curtain for the answer? (Y/N)"
    DIM interrogation AS STRING
    INPUT interrogation
    PRINT ImpInterrogationResponse$(interrogation)

    PRINT "Would you like to continue or quit? (C/Q)"
    DIM choice AS STRING
    INPUT choice

    IF UCASE$(choice) = "Q" THEN
        PRINT "Farewell, mortal! May your factorials be chaotic!"
        EXIT DO
    END IF

LOOP
