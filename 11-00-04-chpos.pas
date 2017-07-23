PROGRAM CharCounter1;
uses crt;
VAR
Ch :CHAR;
Counter,i,n :INTEGER; sentence,word:string;
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
WRITELN('Number of characters= ', Counter);
write(' Input your word or chacarter : ');readln(word);
writeln;
write('The word ',word,' is at position ',pos(word,sentence),' from beginning');
readln;
END.

