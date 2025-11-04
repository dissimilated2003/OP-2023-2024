PROGRAM Encryption(INPUT, OUTPUT);
{Переводит символы из INPUT в код согласно Chiper
и печатает новые символы в OUTPUT}
CONST
  Len = 20;
TYPE
  Str = ARRAY [1 .. Len] OF CHAR;
  LenType = 0 .. Len;
  Chiper = ARRAY [' ' .. 'Z'] OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;
  I: LenType;
PROCEDURE Initialize(VAR Code: Chiper); {Инициализировать Code шифр замены}
BEGIN {Initialize}
  Code[' '] := '%'; 
  Code['A'] := 'Z';
  Code['B'] := 'Y';
  Code['C'] := 'X';
  Code['D'] := '#';
  Code['E'] := 'V';
  Code['F'] := 'U';
  Code['G'] := 'T';
  Code['H'] := 'S';
  Code['I'] := 'I';
  Code['J'] := 'Q';
  Code['K'] := 'P';
  Code['L'] := '!';
  Code['M'] := 'N';
  Code['N'] := 'M';
  Code['O'] := '2';
  Code['P'] := 'K';
  Code['Q'] := '$';
  Code['R'] := 'D';
  Code['S'] := 'H';
  Code['T'] := '*';
  Code['U'] := 'F';
  Code['V'] := 'E';
  Code['W'] := 'T';
  Code['X'] := 'C';
  Code['Y'] := 'B';
  Code['Z'] := 'A'
END; {Initialize}
PROCEDURE Encode(VAR S: Str; VAR I: LenType); {Выводит символы из Code, соответствующие символам из S}
VAR
  Index: 1 .. Len;
BEGIN {Encode}
  FOR Index := 1 TO I
  DO
    IF (S[Index] = ' ') OR (S[Index] IN [' ' .. 'Z'])
    THEN
      WRITE(Code[S[Index]])
    ELSE
      WRITE(S[Index]);
END;  {Encode}

BEGIN {Encryption}
  Initialize(Code); {Инициализировать Code}
  I := 0;
  WHILE NOT EOLN AND (I < Len)
  DO
    BEGIN
      I := I + 1;
      READ(Msg[I]);
      WRITE(Msg[I])
    END;
  READLN;
  WRITELN;
  Encode(Msg, I); {Распечатать кодированное сообщение}
  WRITE('------')
END.  {Encryption}

