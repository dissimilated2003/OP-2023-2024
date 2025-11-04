PROGRAM Converter(INPUT, OUTPUT);
VAR
  Ch: CHAR;
PROCEDURE NoSpaces;
BEGIN
  WHILE Ch = ' '
  DO
    READ(Ch)
  END;

BEGIN {Converter}
  NoSpaces;
  WHILE Ch <> '.'  {cycle that read input line}
  DO
    BEGIN
      READ(Ch);
      IF Ch = ';' {if Converter find ";" then moves to new line and write "  "}
      THEN
        BEGIN
          WRITELN(Ch); {new line}
          WRITE('  ') {that is a coding convention element}
        END
      ELSE
        BEGIN     {identifies "END"}
          IF Ch = 'E'
          THEN
            BEGIN
              READ(Ch);
              IF Ch = 'N'
              THEN
                BEGIN
                  READ(Ch);
                  IF Ch = 'D'
                  THEN
                    BEGIN
                      WRITELN;
                      WRITE('END')
                    END
                  ELSE
                    WRITE(Ch) {Ch is a "READ(Ch1,Ch2); WRITELN(Ch2,Ch1)"}
                END
              ELSE
                WRITE('E', Ch)
            END
          ELSE       {identifies "BEGIN"}
            IF Ch = 'B'
            THEN
              BEGIN
                READ(Ch);
                IF Ch = 'E'
                THEN
                  BEGIN
                    READ(Ch);
                    IF Ch = 'G'
                    THEN
                      BEGIN
                        READ(Ch);
                        IF Ch = 'I'
                        THEN
                          BEGIN
                            READ(Ch);
                            IF Ch = 'N'
                            THEN
                              BEGIN
                                WRITE('BEGIN');
                                WRITELN;
                                WRITE('  ');
                                NoSpaces;
                              END
                            ELSE
                              WRITE(Ch) {mutually Ch is a "READ... WRITELN..."}
                          END
                        ELSE
                          WRITE(Ch)
                      END
                    ELSE
                      WRITE(Ch)
                  END
                ELSE
                  WRITE('E', Ch)
              END
            ELSE
              WRITE(Ch) {that is a "READ... WRITELN..."}
      END
    END
END. {Converter}
