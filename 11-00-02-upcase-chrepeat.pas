Program FreqCounter1;
uses crt;
Var
  Ch, SpecificChar :CHAR;
  i,n,Counter, FreqCounter :Integer;
  sentence:string;
Begin
clrscr;
Counter := 0;
FreqCounter := 0;
Write('Enter the required letter (only one character) : ');
Readln(specificChar);
Write(' Input your sentence : ');readln(sentence);
n:=length(sentence);
for i:=1 to n do
 Begin
  Ch:=upcase(sentence[i]);
  If (Ch >= 'A') And (Ch <= 'Z') Then
     Counter := Counter + 1;
 If Ch = upcase(SpecificChar) Then
    Freqcounter := FreqCounter + 1;
End;
Writeln('Total number of letters= ', Counter);
Writeln('The letter ''', SpecificChar, ''' was repeated ',FreqCounter,
' time(s)');
Writeln('Frequency of repetition= ', freqCounter/Counter*100:2:2,'%');
readln;
End.
