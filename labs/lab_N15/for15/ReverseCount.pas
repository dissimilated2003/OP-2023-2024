PROGRAM ReverseCount(INPUT, OUTPUT);
USES Count3;
VAR
  V100, V10, V1, Ch1, Ch2, Ch3: CHAR;
  F: TEXT;
PROCEDURE RCopy(VAR F1, F2: TEXT);
VAR
  Ch: CHAR;
BEGIN {RCopy}
  IF NOT EOLN(F1)
  THEN
    BEGIN
      READ(F1, Ch);
      WRITE(F2, Ch);
      RCopy(F1, F2)
    END
END; {RCopy}
 
BEGIN {ReverseCount}
  REWRITE(F);
  RCopy(INPUT, F);
  WRITELN(F);
  RESET(F);
  IF NOT EOLN(F)
  THEN
    READ(F, Ch2);
  IF NOT EOLN(F)
  THEN
    READ(F, Ch3);
  Start;
  WHILE NOT EOLN(F)
  DO
    BEGIN
      Ch1 := Ch2;
      Ch2 := Ch3;
      READ(F, Ch3);
      IF ((Ch2 > Ch1) AND (Ch2 > Ch3)) OR ((Ch2 < Ch1) AND (Ch2 < Ch3))
      THEN
        Bump
    END;
  Value(V100, V10, V1);
  WRITE(OUTPUT, 'Вход:');
  RESET(F);
  RCopy(F, OUTPUT);
  WRITELN(OUTPUT);
  WRITE(OUTPUT, 'Количество реверсов:');
  WRITELN(OUTPUT, V100, V10, V1)  
END. {ReverseCount}
