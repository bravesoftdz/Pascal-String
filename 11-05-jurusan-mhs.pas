Program String_copy;
uses crt;
var nim,nama,thn,jur,prodi,fak,tgkt:string;
Fakultas,Jurusan,Progdi,jenjang,thnmsk:string;
thn1,code:integer;

begin
clrscr;
write(' Masukkan Nama : ');readln(nama);
write(' Masukkan NIM (10 angka) : ');readln(nim);
Fak:=copy(nim,1,1);
jur:=copy(nim,2,1);
prodi:=copy(nim,3,2);
tgkt:=copy(nim,5,1);
thn:=copy(nim,6,2);

case fak of
'1': Fakultas:='Fakultas Ilmu Pendidikan';
'2': Fakultas:='Fakultas Bahasa dan Seni';
'3': Fakultas:='Fakultas Ilmu Sosial';
'4':Begin
    Fakultas:='Fakultas Matematika dan Ilmu Alam';
   case jur of
   '1': begin
        Jurusan:='Matematika';
        case prodi of
       '01': progdi:='Pendidikan Matematika';
       '11': progdi:='Matematika';
       '12': progdi:='Statistika Terapan dan Komputasi';
        end;
        end;
   '2': begin
        Jurusan:='Biologi ';
        case prodi of
       '01': progdi:='Pendidikan Biologi';
       '11': progdi:='Biologi';
        end;
        end;
   '3': begin
        Jurusan:='Fisika';
        case prodi of
       '01': progdi:='Pendidikan Fisika';
       '11': progdi:='Fisika';
        end;
        end;
   '4': begin
        Jurusan:='Kimia';
        case prodi of
       '01': progdi:='Pendidikan Kimia';
       '11': progdi:='Kimia';
        end;
        end;
   '5': begin
        Jurusan:='IPA Terpadu';
        progdi:='Pendidikan IPA';
        end;
   '6': begin
        Jurusan:='Ilmu Komputer';
        progdi:='Teknik informatika';
       end;
 end;
 end;
'5': Fakultas:='Fakultas Teknik';
'6': Fakultas:='Fakultas Ilmu Keolahragaan';
'7': Fakultas:='Fakultas Hukum';
'8': Fakultas:='Fakultas Ekonomi';
end;
case tgkt of
 '1': jenjang:='Diploma 1 (D1)';
 '2': jenjang:='Diploma 2 (D2)';
 '3': jenjang:='Diploma 3 (D3)';
 '4': Jenjang:='Sarjana (S1)';
end;

{if thn>'70' then thnmsk:='19'+thn else thnmsk:='20'+thn;}
val(thn,thn1,code);
if thn1 >70 then thnmsk:='19'+thn else thnmsk:='20'+thn;

clrscr;
writeln;
writeln(' IDENTITAS MAHASISWA');
writeln('=====================');
writeln(' Nama Mahasiswa : ',nama);
writeln(' NIM : ',nim);
writeln(' Fakultas : ',fakultas);
writeln(' Jurusan : ',Jurusan);
writeln(' Program Studi : ',progdi);
writeln(' Jenjang : ',jenjang);
writeln(' Tahun masuk : ',thnmsk);
readln;
end.




