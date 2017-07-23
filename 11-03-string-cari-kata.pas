Program String5_cari_kata;
Uses Crt;
Type Data=Record
Kata : String;
End;
Larikdata = Array [1..100] of Data;
Var Katacr : Larikdata;
i,j : Integer;
Kal : String;
Ul : Char;
Crkata,idx : String;
ketemu : Integer;
Procedure Ambilkata(Var a,b: Integer; Kalimat: String);
Var Tmp : String;
Begin
Tmp:='';
While (Kalimat[a]<>' ') And (Kalimat[a]<>'-') And (Kalimat[a]<>'!')
And (Kalimat[a]<>'?') And (Kalimat[a]<>',') And
(Kalimat[a]<>'.')
And (Kalimat[a]<>':') And (Kalimat[a]<>';') And
(a<=Length(Kalimat)) Do
Begin
Tmp:=Tmp+Kalimat[a];
Inc(a);
End;
Inc(b);
Katacr[b].Kata:=Tmp;
End;
Procedure CariKata(x:Integer;Carikt:String;Var indeks:String;Var
ktm:Integer);
Function IntToStr(k: Longint): String;
Var
S: string[11];
Begin
Str(k, S);
IntToStr := S;
End;
Var i: Integer;
Begin
For i:= 1 to x Do
Begin
If Carikt=Katacr[i].Kata Then
Begin
Inc(ktm);
indeks:=indeks+IntToStr(i)+' ';
End;
End;
End;
Begin
Repeat
Clrscr;
Writeln('Program Cari Kata Dalam Kalimat');
Writeln('===============================');
Writeln;
Writeln('Masukkan Kalimat:');Readln(Kal);
Writeln;
Write('Masukkan Kata Yang Dicari: ');Readln(Crkata);
i:=1;
j:=0;
idx:='';
ketemu:=0;
While i<=Length(Kal) Do
Begin
If (i=1) And (Kal[1]<>' ') Then
AmbilKata(i,j,Kal)
Else If (Kal[i]=' ') And (Kal[i+1]<>' ') And (Kal[i+2]<>' ')
Then
Begin
Inc(i);
AmbilKata(i,j,Kal);
End
Else If (Kal[i]='-') And (Kal[i-1]<>' ') And (Kal[i+1]<>' ')
Then
Begin
Inc(i);
AmbilKata(i,j,Kal);
End
Else
Inc(i);
End;
CariKata(j,Crkata,idx,ketemu);
Writeln;
if (ketemu>0) then
Writeln('Kata "',Crkata,'" Ditemukan Dalam Kalimat Pada Posisi: ',idx,'.')
else
Writeln('Kata "',Crkata,'" Tidak Ditemukan Dalam Kalimat!');
Writeln;
Write('Mau Ulang Lagi [Y/T]: ');Ul:=Upcase(Readkey);
Until Ul<>'Y';
End.