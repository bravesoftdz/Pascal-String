PROGRAM CharCounter1;
uses crt;
VAR
Ch :CHAR;
Counter,i,n :INTEGER; sentence:string;
BEGIN
clrscr;
Counter := 0;
write(' Write your sentence : ');readln(sentence);
n:=length(sentence);
for i:=1 to n do
BEGIN
if sentence[i]<>' ' then
   Counter := Counter + 1;
END;
WRITELN;
WRITELN('Number of characters (not space character) = ', Counter);
readln;
END.

