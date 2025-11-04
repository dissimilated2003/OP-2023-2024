PROGRAM Split(INPUT, OUTPUT); {DP1}
  {Копирует INPUT в OUTPUT, сначала нечетные, а затем четные
   элементы}
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
PROCEDURE CopyOut(VAR F1: TEXT; VAR Ch: CHAR); {DP1.1}
BEGIN {CopyOut}
  {Копируем F1 в OUTPUT}
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(OUTPUT, Ch);
    END
END; {CopyOut, DP1.1}

BEGIN {Split}
  {Разделяет INPUT в Odds и Evens, DP1.2}
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O';
  WHILE NOT EOF(INPUT)
  DO
    BEGIN
      WHILE NOT EOLN(INPUT)
      DO
        {Прочитать Ch, записать в файл, выбранный через
        Next, переключить Next, DP1.2.1}
        BEGIN
          READ(INPUT, Ch);
          IF Next = 'O'
          THEN
            BEGIN
              WRITE(Odds, Ch);
              Next := 'E'
            END
          ELSE
            BEGIN
              WRITE(Evens, Ch);
              Next := 'O'
            END
        END; {DP1.2.1}
        READLN(INPUT)
    END;
  RESET(Odds);
  RESET(Evens); {DP1.2}
  CopyOut(Odds, Ch);
  CopyOut(Evens, Ch);
  WRITELN(OUTPUT)
END. {Split, DP1}

