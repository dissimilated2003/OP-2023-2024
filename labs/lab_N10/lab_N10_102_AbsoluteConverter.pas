PROGRAM AbsoluteConverter(INPUT, OUTPUT);
VAR
  Ch1, Ch2, Ch3, Ch4, Ch5, Ch6, Ch7: CHAR;
  V: CHAR;
PROCEDURE NoSpaces;
BEGIN
  WHILE V = ' '
  DO
    READ(V);
END;

BEGIN {AbsoluteConverter}
  NoSpaces;
  WHILE V <> '.' 
  DO
    BEGIN
      NoSpaces;
      READ(V);
      IF Ch1 = ';'
      THEN
        BEGIN
          NoSpaces;
          WRITELN(V);
          WRITE('  ')
        END
      ELSE
        BEGIN
          NoSpaces;
          READ(Ch1, Ch2, Ch3);
          IF (Ch1 = 'E') AND (Ch2 = 'N') AND (Ch3 = 'D')
          THEN
            BEGIN
              NoSpaces;
              WRITELN(V);
              WRITE('END.');
              WRITELN;
            END
          ELSE
            BEGIN
              NoSpaces;
              READ(Ch1, Ch2, Ch3, Ch4, Ch5, Ch6, Ch7);
              IF (Ch1 = 'W') AND (Ch2 = 'R') AND (Ch3 = 'I') AND (Ch4 = 'T') AND (Ch5 = 'E') AND (Ch6 = 'L') AND (Ch7 = 'N')
              THEN
                BEGIN
                  NoSpaces;
                  WRITELN;
                  WRITE(V);
                  WRITE('WRITELN');
                  WRITELN;
                END
              ELSE
                BEGIN
                  NoSpaces;
                  READ(Ch1, Ch2, Ch3, Ch4);
                  IF (Ch1 = 'R') AND (Ch2 = 'E') AND (Ch3 = 'A') AND (Ch4 = 'D')
                  THEN
                    BEGIN
                      NoSpaces;
                      WRITELN;
                      WRITE(V);
                      WRITE('READ');
                      WRITELN;
                    END
                  ELSE
                    BEGIN
                      NoSpaces;
                      READ(Ch1, Ch2, Ch3, Ch4, Ch5);
                      IF (Ch1 = 'B') AND (Ch2 = 'E') AND (Ch3 = 'G') AND (Ch4 = 'I') AND (Ch5 = 'N')
                      THEN
                        BEGIN
                          NoSpaces;
                          WRITELN;
                          WRITE('  ');
                          WRITE('BEGIN');
                          WRITELN;
                        END
                      ELSE
                    END
                END
            END
        END
    END
END. {AbsoluteConverter}
