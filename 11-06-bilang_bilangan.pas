program bilang_bilangan;
uses crt;

var a,b,c,d,e,f: integer; bil:longint;
jaw: string;

function bilang(x:integer):string;
begin
case x of
0:bilang:='';
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

function belas(x:longint):string;
begin
belas:=bilang(x)+' Belas';
end;


function puluh(x:longint):string;
begin
if x> 0 then puluh:=bilang(x)+' Puluh' else puluh:='';
end;

function ratus(x:longint):string;
begin
if x> 0 then ratus:=bilang(x)+' Ratus' else ratus:='';
end;

function ribu(x:longint):string;
begin
if x>0 then ribu:=bilang(x)+' Ribu' else ribu:='';
end;


begin
repeat
clrscr;
write(' Masukkan bilangan : ');readln(bil);
if bil>=1000 then
   begin
   a:= bil div 1000;
   if a=1 then write('Seribu ') else write(ribu(a), ' ');
   b:= bil mod 1000;
   c:= b div 100;
   d:= b mod 100;
   if c=1 then write('Seratus ') else write(ratus(c),' ');
   e:= d div 10;
   f:= d mod 10;
   if d=10 then write('Sepuluh') else if d=11 then write('Sebelas ')
   else if e=1 then write(belas(f)) else
   write(puluh(e),' ', bilang(f));
   end
else if bil>=100 then
   begin
   a:= bil div 100;
   if a=1 then write('Seratus ') else write(ratus(a),' ');
   b:= bil mod 100;
   c:= b div 10;
   d:= b mod 10;
   if b=10 then write('Sepuluh ') else if b=11 then write('Sebelas ')
   else if c=1 then write(belas(d)) else
   write(puluh(c),' ', bilang(d))
   end
else if bil>=10 then
   begin
   a:= bil div 10;
   b:= bil mod 10;
   if bil = 10 then write('sepuluh') else
   if bil=11 then write('Sebelas ') else if a=1 then write(belas(b)) else
   write(puluh(a),' ', bilang(b))
   end
else
   begin
   writeln(bilang(bil));
   end;
writeln;
writeln;
write(' LAGI (Y/T)? ');readln(jaw);
until upcase(jaw)<>'Y';

end.

