PROGRAM IFSort3(INPUT, OUTPUT);
VAR
  Ch1, Ch2, Ch3: CHAR;
BEGIN {IFSort3}
  READ(Ch1, Ch2, Ch3);
  WRITELN('Входные данные ', Ch1, Ch2, Ch3);
  WRITE('Сортированные данные ');
  IF Ch1 < Ch2
  THEN
    IF Ch2 < Ch3
    THEN
      WRITELN(Ch1, Ch2, Ch3)
    ELSE
      IF Ch1 < Ch3
      THEN
        WRITELN(Ch1, Ch3, Ch2)
      ELSE
        WRITELN(Ch3, Ch1, Ch2)
  ELSE
    IF Ch1 < Ch3
    THEN
      WRITELN(Ch2, Ch1, Ch3)
    ELSE
      IF Ch2 < Ch3
      THEN 
        WRITELN(Ch2, Ch3, Ch1)
      ELSE 
        WRITELN(Ch3, Ch2, Ch1)
END. {IFSort3}
