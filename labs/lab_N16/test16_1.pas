PROGRAM SortMonth(INPUT, OUTPUT);
USES
  DateIO;
VAR
  M1, M2: Month;
BEGIN
  ReadMonth(INPUT, M1);
  ReadMonth(INPUT, M2);
  IF (M1 = NoMonth) OR (M2 = NoMonth)
  THEN
    WRITELN('Неверные входные данные')
END.
