PROGRAM TestRemove(INPUT, OUTPUT);
  {„итает строку из входа, пропускает ее через RemoveExtraBlanks}
USES Queue;
VAR
  Ch: CHAR;
PROCEDURE RemoveExtraBlanks; {DP1}
{”дал€ет лишние пробелы между словами на одной строке}
VAR
  Ch, Blank, LineEnd: CHAR;
BEGIN {RemoveExtraBlanks}
  Blank := ' ';
  LineEnd := '$';
  AddQ(LineEnd); {помечаем конец текста в очереди}
  HeadQ(Ch);
  {удал€ем пробелы, DP1.1}
  WHILE Ch = Blank
  DO
    BEGIN
      DelQ;
      HeadQ(Ch)
    END; {DP1.1}
  WHILE Ch <> LineEnd
  DO
    BEGIN
      {читаем слово, DP1.2}
      WHILE (Ch <> Blank) AND (Ch <> LineEnd)
      DO
        BEGIN
          AddQ(Ch);
          DelQ;
          HeadQ(Ch)
        END; {DP1.2}
      {удал€ем пробелы, DP1.1}
      WHILE Ch = Blank
      DO
        BEGIN
          DelQ;
          HeadQ(Ch)
        END; {DP1.1}
      {¬ставл€ем пробел между словами}
    END;
  DelQ {уда€ем LineEnd из очереди}
END; {RemoveExtraBlanks, DP1}

BEGIN {TestRemove}
  EmptyQ;
  WRITE('¬ход:');
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(Ch);
      AddQ(Ch);
    END;
  WRITELN;
  RemoveExtraBlanks;
  WRITE('¬ыход:');
  HeadQ(Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(Ch);
      DelQ;
      HeadQ(Ch)
    END;
  WRITELN
END. {TestRemove}
