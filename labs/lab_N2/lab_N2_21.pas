PROGRAM Copy2(INPUT, OUTPUT);
{Копирует первые два символа из INPUT в OUTPUT}
VAR
  Letter: CHAR;
BEGIN
  READ(Letter);
  WRITE(Letter);
  READ(Letter);
  WRITELN(Letter)
END.
