PROGRAM What(INPUT, OUTPUT); 
VAR 
  Ch: CHAR;
BEGIN {What}
  READ(Ch);
  IF '0' <= Ch      {Задаёт начало интервала}
  THEN 
    IF Ch <= '9'    {Задаёт конец интервала}
    THEN 
      WRITELN(Ch, ' это цифра')
    ELSE 
      WRITELN(Ch, ' это не цифра')
  ELSE 
    WRITELN(Ch, ' это не цифра') 
END. {What}             
