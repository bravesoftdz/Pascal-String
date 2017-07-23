PROGRAM String1;
uses crt;
CONST
CF = CHR(124);
VAR
Name :STRING[30];
I :INTEGER;
BEGIN
clrscr;
WRITE('Please enter a name: ');
READLN(Name);
FOR I := 1 TO LENGTH(Name) DO
WRITE(Name[I],CF);
readln;
END.