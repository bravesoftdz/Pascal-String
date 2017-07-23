Program string2_Polindrom;
Uses crt;
Var kt,hkt,hkt1:string; jaw:char;
i,j:integer;
Begin
repeat
clrscr;
Writeln(' Program Polindrom');
Writeln('===================');
Writeln;
Write(' Masukkan Kata: ');Readln(kt);
Writeln;
j:=length(kt);
hkt:=''; hkt1:='';
For i:= 1 to j do
hkt:=hkt+kt[i];
For i:= j downto 1 do
hkt1:=hkt1+kt[i];
Writeln(' Asal: ',hkt,' Dibalik: ',hkt1);
Writeln;
if (hkt=hkt1) then
Writeln(' Kata Tersebut Termasuk Polindrom!')
else
Writeln(' Kata Tersebut Tidak Termasuk Polindrom!');
writeln;
write(' Repeat Again (y/t)? ');readln(jaw);
until upcase(jaw)<>'Y';
End.
