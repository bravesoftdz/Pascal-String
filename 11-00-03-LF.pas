PROGRAM String1;
uses crt;
CONST
LF = CHR(10);
VAR
Name :string[30];
i :integer;
begin
clrscr;
write('Please enter a word or sentence : ');
Readln(Name);
FOR i := 1 TO Length(Name) DO
write(Name[i],LF);
readln;
end.
