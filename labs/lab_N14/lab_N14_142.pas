PROGRAM Copy(INPUT, OUTPUT);
PROCEDURE RCopy(VAR InFile, OutFile: TEXT);
VAR
  Ch: CHAR;
BEGIN {RCopy}
  IF NOT EOLN(InFile)
  THEN
    BEGIN
      READ(InFile, Ch);
      WRITE(OutFile, Ch);
      RCopy(InFile, OutFile);
    END
END; {RCopy}                                                  

BEGIN
  RCopy(INPUT, OUTPUT);
  WRITELN
END.
