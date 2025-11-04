PROGRAM BubbleSort(INPUT, OUTPUT);
{Сортируем первую строку INPUT в OUTPUT}
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN {BubbleSort}
  { Копируем INPUT в F1 }
  BEGIN { Копируем INPUT в F1 } {-----------------------------DP7.2-------------------------}
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch);
    END;
  WRITELN(F1)
  END;
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN { Копируем F1 в F2,проверяя отсортированность
       и переставляя первые соседние символы по порядку} {----------------DP7.1-------------}
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      IF NOT EOLN(F1)
      THEN
        BEGIN
        READ(F1,Ch1);
        WHILE NOT EOLN(F1)
        DO { По крайней мере два символа остается для Ch1,Ch2 }
          BEGIN     {----------------------------------DP7.1.1------------------------------}
            READ(F1, Ch2); {Выводим  Min (Ch1, Ch2) в  F2, записывая отсортированные символы}
            IF Ch1 <= Ch2
            THEN
              BEGIN
                WRITE(F2, Ch1);
                  Ch1 := Ch2
              END
            ELSE
              BEGIN
                WRITE(F2, Ch2);
                Sorted := 'N'
              END;
          END;
        WRITELN(F2, Ch1) { Выводим последний символ в F2 }
        END;
      BEGIN { Копируем INPUT в F1 } {------------------------DP7.2--------------------------}
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch);
    END;
  WRITELN(F1)
      END;
    BEGIN { Копируем F2 в F1 } {---------------------------DP7.4----------------------------}
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch);
    END;
  WRITELN(F1)
    END;
    END;
  BEGIN { Копируем F1 в OUTPUT} {-----------------------DP7.5-------------------------------}
    REWRITE(F1);
    WHILE NOT EOLN
    DO
      BEGIN
        READ(Ch);
        WRITE(F1, Ch);
      END;
    WRITELN(F1)
  END;
END. {BubbleSort}
