program mengeja_nomor;
uses crt;

var no,jaw:string;
bil,code, i,n:integer;

function bilang(x:integer):string;
begin
case x of
0:bilang:='Nol';
1:bilang:='Satu';
2:bilang:='Dua';
3:bilang:='Tiga';
4:bilang:='Empat';
5:bilang:='lima';
6:bilang:='Enam';
7:bilang:='Tujuh';
8:bilang:='Delapan';
9:bilang:='Sembilan';
end;
end;

begin
repeat
clrscr;
write(' Masukkan nomor : ');readln(no);
n:=length(no);
writeln(' BACANYA ADALAH : ');
writeln('==================');
for i:= 1 to n do
begin
 if no[i]=' ' then writeln;
 if no[i]<>' ' then
  begin
  val(no[i],bil,code);
  write(' ',bilang(bil),' ');
  end;
end;
writeln;
writeln;
write(' LAGI (Y/T)? ');readln(jaw);
until upcase(jaw)<>'Y';
end.