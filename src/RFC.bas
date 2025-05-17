REM Ridiculous Factorial Calculator
REM Because normal factorials just aren't enough.

REM Initialize variables
Dim n As Double
Dim result As Double
Dim mode As Integer

REM Get user input
Print "Enter a number for ridiculous factorial calculation:"
Input n
Print "Choose mode: 0 = Normal, 1 = Chaos, 2 = Gamma Ray Gun"
Input mode

REM Start calculation
If mode = 0 Then
    REM Standard factorial calculation
    result = 1
    For i = 1 To n
        result = result * i
    Next i
ElseIf mode = 1 Then
    REM Chaotic factorial (recursive exponentiation, randomization)
    result = n
    For i = 1 To n
        result = result ^ (Rnd() * i)
    Next i
ElseIf mode = 2 Then
    REM Gamma function approximation for non-integers
    result = Exp(Ln(Abs(n)) * n)
End If

REM Print final result
Print "Ridiculous Factorial Result: "; result
If result > 1E100 Then Print "Warning: Calculation has exceeded known universe!"
