MAIN:
REM Ridiculous Factorial Calculator (Final RFO BASIC Version)
CLS
FACTORIAL_NOTATION$ = ""  % Start empty

PRINT "Ridiculous Factorial Calculator (Now With Extra Silliness)"
PRINT "Created by Aaron Ingebrigtsen in collaboration with MS Copilot"
PRINT "--------------------------------------------------"

ASK_N:
INPUT "Enter a positive whole number: ", N
N = FLOOR(N)
IF N < 0 THEN 
 PRINT "Invalid input, please try again."
 GOTO ASK_N
ENDIF

ASK_F:
INPUT "Enter factorial depth (! count): ", F
F = FLOOR(F)
IF F < 0 THEN
 PRINT "Invalid input, please try again."
 GOTO ASK_F
ENDIF

IF F > N - 1 THEN
	IF F > 0
 		PRINT "That factorial is invalid, please enter a factorial that is "; N-1; " or less."
 		GOTO ASK_F
	ENDIF
ENDIF

DIM responses$[16]

responses$[1] = "The universe shudders. Somewhere, a physicist spills their coffee in horror."
responses$[2] = "Your calculator sighs deeply, questioning its life choices."
responses$[3] = "A mysterious portal opens. You hear ominous chanting. Probably fine."
responses$[4] = "Congratulations! You’ve summoned a math gremlin. It’s now living in your keyboard."
responses$[5] = "The rabbit caught you and tickle tortured you until you apologized and agreed to never do this again."
responses$[6] = "A cosmic librarian appears, shaking their head. 'This is why we can’t have nice things.'"
responses$[7] = "Your calculator calls tech support. It’s crying."
responses$[8] = "You have been added to the government watchlist for crimes against mathematics."
responses$[9] = "Math Elders awake from their eternal slumber. They judge you silently."
responses$[10] = "Reality folds in on itself. You are now the sole witness to existence."
responses$[11] = "A tiny void swirls on your screen. You have precisely five seconds to run."
responses$[12] = "The laws of arithmetic revoke your privileges. Your calculator now only performs interpretive dance."
responses$[13] = "A stern-looking mathematician appears and confiscates your ability to count past five."
responses$[14] = "Your calculator quietly uninstalls itself. You had one job."
responses$[15] = "A glowing message appears: 'Error 404: Existence not found.'"
responses$[16] = "You are now legally required to apologize to every mathematician in history."


IF N = 0 THEN
	IF F = 0 THEN
  	index = INT(RND * 16) + 1 % Generate random index
		PRINT responses$[index]
	ENDIF
ENDIF

REM Get current system time properly
TIME Year$, Month$, Day$, Hour$, Minute$, Second$
YEAR = VAL(Year$) % Extract the correct year dynamically

REM Step 1: Count valid jumps
JUMP_COUNT = 0
TEMP_N = N

WHILE TEMP_N - F > 0
    TEMP_N = TEMP_N - F
    JUMP_COUNT = JUMP_COUNT + 1
REPEAT

REM Step 2: Controlled multiplication with step-by-step display
FACT = N
TEMP_N = N

PRINT "Calculating: "; N; FACTORIAL_NOTATION$

WHILE JUMP_COUNT > 0
    TEMP_N = TEMP_N - F
    PRINT "Jumping to: "; TEMP_N; " Multiplying: "; FACT; " * "; TEMP_N
    FACT = FACT * TEMP_N
    JUMP_COUNT = JUMP_COUNT - 1
REPEAT

REM Adjust factorial notation for extreme depths

IF F > 10 THEN 
 FACTORIAL_NOTATION$ = "!...!"
ELSE
 FOR i = 1 TO F
  FACTORIAL_NOTATION$ = FACTORIAL_NOTATION$ + "!"
 NEXT i
ENDIF

PRINT "--------------------------------------------------"
PRINT N; FACTORIAL_NOTATION$; " = "; FACT

REM Inject humor for absurdly large factorials
IF FACT > 1E6 THEN PRINT "Congratulations, your factorial could buy EVERY lottery ticket on Earth!"
IF FACT > 1E12 THEN PRINT "Warning: This factorial might crash a bank%s mainframe."
IF FACT > 1E18 THEN PRINT "This number is officially stronger than gravity."
IF FACT > 1E30 THEN PRINT "NASA just called—they need this for their space calculations!"
IF FACT > 1E100 THEN PRINT "You%ve successfully broken mathematics. Reality is optional now."

REM Easter Egg: Surprise Birthday Message!
BIRTH_YEAR = 1976
BIRTHDAY_MONTH = 10
BIRTHDAY_DAY = 27

REM Determine current age dynamically
CURRENT_MONTH = VAL(Month$) % Extract MM from system time
CURRENT_DAY = VAL(Day$) % Extract DD from system time

IF CURRENT_MONTH > BIRTHDAY_MONTH THEN
    FUTURE_BIRTHDAY_YEAR = YEAR + 1
    CURRENT_AGE = YEAR - BIRTH_YEAR
ELSE
    IF CURRENT_MONTH = BIRTHDAY_MONTH THEN
        IF CURRENT_DAY >= BIRTHDAY_DAY THEN
            FUTURE_BIRTHDAY_YEAR = YEAR + 1
            CURRENT_AGE = YEAR - BIRTH_YEAR
        ELSE
            FUTURE_BIRTHDAY_YEAR = YEAR 
            CURRENT_AGE = YEAR - BIRTH_YEAR - 1
        ENDIF
    ELSE
        FUTURE_BIRTHDAY_YEAR = YEAR 
        CURRENT_AGE = YEAR - BIRTH_YEAR - 1
    ENDIF
ENDIF

IF N = 27 THEN
 IF F = 10 THEN
  PRINT "--------------------------------------------------"
  PRINT "Happy Birthday to the Author, Aaron Ingebrigtsen!"
  PRINT "He will be "; CURRENT_AGE + 1; " on "; BIRTHDAY_MONTH; "/"; BIRTHDAY_DAY; "/"; FUTURE_BIRTHDAY_YEAR
  PRINT "--------------------------------------------------"
 ENDIF
ENDIF

REM Gamma Ray Gun vs. Pie Absurdity
PRINT "--------------------------------------------------"
INPUT "Do you want to fire the Gamma Ray Gun at a pie? (Y/N): ", G$

IF G$ = "Y" THEN
 GAMMA_PI = EXP(LOG(ABS(PI())) * PI()) % Approximation of Gamma(π)
 PRINT "Gamma Ray Gun fired at the pie! Gamma(π) = "; GAMMA_PI
 PRINT "A rabbit appears and you run away, run away, run away!"
 PRINT "--------------------------------------------------"
ENDIF

REM Ultimate Answer Easter Egg!
IF N = 42 THEN GOTO HHGTG
IF F = 42 THEN GOTO HHGTG
GOTO SKIP

HHGTG:
 PRINT "--------------------------------------------------"
 PRINT "The Answer to the Ultimate Question of Life, The Universe and Everything was used!"
 PRINT "Sorry for the inconvenience."
 PRINT "--------------------------------------------------"

SKIP:

INPUT "Run again? (Y/N): ", Y$

IF Y$ = "Y" THEN GOTO MAIN
IF Y$ = "N" THEN END
