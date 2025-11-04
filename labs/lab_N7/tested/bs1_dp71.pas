PROGRAM DP71(INPUT, OUTPUT);
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN { Копируем F1 в F2, проверяя отсортированность и переставляя первые соседнии символы по порядку}
  Sorted := 'Y';
  RESET(F1);
  REWRITE(F2);
  IF NOT EOLN(F1)
  THEN
    BEGIN
      READ(F1,Ch1);
      WHILE NOT EOLN(F1)
      DO { По крайней мере два символа остается для Ch1,Ch2 }
        BEGIN
          READ(F1, Ch2); { Выводим   min(Ch1,Ch2) в  F2, записывая отсортированные символы }
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
    END
END.
