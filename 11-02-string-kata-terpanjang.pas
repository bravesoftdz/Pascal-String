Program String4_kata_terpanjang;
Uses Crt;
Type Data=Record
          Kata : String;
          End;
    Larikdata = Array [1..100] of Data;
Var KataPjg : Larikdata;
    i,j,idx : Integer;
    Kal : String;
    Ul : Char;

Procedure Ambilkata(Var a,b: Integer; Kalimat: String);
Var Tmp : String;
Begin
Tmp:='';
While (Kalimat[a]<>' ') And (Kalimat[a]<>'-') And (Kalimat[a]<>'!')
And (Kalimat[a]<>'?') And (Kalimat[a]<>',') And (Kalimat[a]<>'.')
And (Kalimat[a]<>':') And (Kalimat[a]<>';') And (a<=Length(Kalimat)) Do
Begin
 Tmp:=Tmp+Kalimat[a];
 Inc(a);
End;
 Inc(b);
 KataPjg[b].Kata:=Tmp;
End;
Procedure CariKataTerpanjang(x:Integer;Var indeks: Integer);
Var i,max: Integer;
Begin
max:=0;
For i:= 1 to x Do
If max<Length(KataPjg[i].Kata) Then
Begin
max:=Length(KataPjg[i].Kata);
indeks:=i;
End;
End;
Begin
Repeat
Clrscr;
Writeln('Program Cari Kata Terpanjang Dalam Kalimat');
Writeln('==========================================');
Writeln;
Writeln('Masukkan Kalimat:');Readln(Kal);
i:=1;
j:=0;
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
CariKataTerpanjang(j,idx);
Writeln;
Writeln('Kata Terpanjang Dalam Kalimat Di Atas: ',Katapjg[idx].kata);
Writeln;
Write('Mau Ulang Lagi [Y/T]: ');Ul:=Upcase(Readkey);
Until Ul<>'Y';
End.
