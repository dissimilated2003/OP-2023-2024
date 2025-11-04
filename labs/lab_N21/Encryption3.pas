PROGRAM Encryption(INPUT, OUTPUT);
{Переводит символы из INPUT в код согласно Chiper 
  и печатает новые символы в OUTPUT}
CONST
  Len = 20;
TYPE
  LenStr = 0 .. Len;
  Str = ARRAY [1 .. Len] OF CHAR;
  Chiper = ARRAY [CHAR] OF CHAR;
VAR
  F: TEXT;
  I: LenStr;
  Msg: Str;
  Code: Chiper;
  
PROCEDURE Initialize(VAR Code: Chiper);
{Присвоить Code шифр замены}
VAR
  Ch1, Ch2: CHAR;
BEGIN {Initialize}
  ASSIGN(F, './chipher.txt');
  RESET(F);
  WHILE NOT EOF(F)
  DO
    BEGIN
      READ(F, Ch1);
      READ(F, Ch2);
      Code[Ch2] := Ch1;
      READLN(F)
    END
END;  {Initialize}

PROCEDURE Encode(VAR S: Str; VAR I: LenStr);
{Выводит символы из Code, соответствующие символам из S}
VAR
  Index: 1 .. Len;
BEGIN {Encode}
  FOR Index := 1 TO I
  DO
    WRITE(Code[S[Index]]);
    WRITELN
END;  {Encode}


BEGIN {Encryption}
  {Инициализировать Code}
  Initialize(Code);
  WHILE NOT EOF
  DO
    BEGIN
      {читать строку в Msg и распечатать ее}
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
      {распечатать кодированное сообщение}
      Encode(Msg, I)
    END
END.  {Encryption}
