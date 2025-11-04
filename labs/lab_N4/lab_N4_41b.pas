PROGRAM PaulRevere(INPUT, OUTPUT);
VAR
  Lanterns: CHAR;
BEGIN {PaulRevere}
  {Read Lanterns}
  READ(Lanterns);
  {Issue Paul Revere's message}
  IF Lanterns > '0'
  THEN
    IF Lanterns < '3'
    THEN
      BEGIN
        WRITE('The British are coming by');
        IF Lanterns = '1'
        THEN
          WRITELN(' land.')
        ELSE
          WRITELN(' sea.')
        END
    ELSE
      WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {PaulRevere}