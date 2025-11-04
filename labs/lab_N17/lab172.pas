PROGRAM DigitSum(INPUT, OUTPUT);
VAR
  Digit, Num: INTEGER;
  Ch: CHAR;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
VAR
  Ch: CHAR;
BEGIN {ReadDigit}
  D := -1;
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      IF Ch = '0' THEN D := 0 ELSE
      IF Ch = '1' THEN D := 1 ELSE
      IF Ch = '2' THEN D := 2 ELSE
      IF Ch = '3' THEN D := 3 ELSE
      IF Ch = '4' THEN D := 4 ELSE
      IF Ch = '5' THEN D := 5 ELSE
      IF Ch = '6' THEN D := 6 ELSE
      IF Ch = '7' THEN D := 7 ELSE
      IF Ch = '8' THEN D := 8 ELSE
      IF Ch = '9' THEN D := 9
    END
END; {ReadDigit}

PROCEDURE ReadNumber(VAR F: TEXT; VAR N: INTEGER);
VAR
  Digit: INTEGER;
BEGIN {ReadNumber}
  Num := 0;
  Digit := 0;
  WHILE NOT EOLN AND (Digit > -1)
  DO 
    BEGIN
      ReadDigit(INPUT, Digit);
      IF (Digit > 0) AND (Num <> -2)
      THEN
        BEGIN
          IF (MAXINT - Digit) DIV 10 >= Num
          THEN
            Num := Num * 10 + Digit
          ELSE
              Num := -2
        END
    END;
  IF (Digit = -1) AND (Num = 0)
  THEN
    Num := -1;
  WRITELN(Num)
END; {ReadNumber} 

BEGIN {DigitSum}
  ReadNumber(INPUT, Num);
END. {DigitSum}
