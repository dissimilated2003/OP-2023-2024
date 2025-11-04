PROGRAM Prime(INPUT, OUTPUT);
CONST
  Max = 100;
VAR
  Form, Next: INTEGER;
  Sieve: SET OF 0 .. Max; 
BEGIN {Prime}
  WRITE('Простые числа в диапазоне от 2 до 100 будут: ');
  Sieve := [2 .. Max]; {Первоначальное множество}
  Form := 2;
  Next := Form;
  WHILE (Sieve <> []) AND (Form <= Max)
  DO
    BEGIN
      IF Form IN Sieve
      THEN
        BEGIN
          WRITE(Form, ' '); 
          WHILE (Sieve <> []) AND (Form <= Max)
          DO
            BEGIN    
              Sieve := Sieve - [Form];
              Form := Form + Next
            END;
        END;
      Form := SUCC(Next);
      Next := Form
    END;
  WRITELN
END. {Prime}
