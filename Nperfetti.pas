program Nperfetti;

{$mode objfpc}{$H+}

uses
   stampa, Mytype, MyMath;
var
Out_File_Tex:textfile;
primi:MyType_arrayInteger;
difettivi:MyType_arrayInteger;
soprabbondanti:MyType_arrayInteger;
perfetti:MyType_arrayInteger;
n,somma:longint;
{$R *.res}

begin
for n:=1 to MyType_Max_Numero do primi[n]:=0;
for n:=1 to MyType_Max_Numero do difettivi[n]:=0;
for n:=1 to MyType_Max_Numero do soprabbondanti[n]:=0;
for n:=1 to MyType_Max_Numero do perfetti[n]:=0;
primi[1]:=1;
difettivi[1]:=1;
soprabbondanti[1]:=1;
  n:=2;
  while n < MyType_Max_Numero do
  begin
  somma:= MyMathSigma(n);
  writeln('n= ',n);
  if somma=1 then primi[n]:=1;
  if somma=n then perfetti[n]:=1;
  if somma<n then difettivi[n]:=1;
  if somma>n then soprabbondanti[n]:=1;
   n:=n+1;
  end;
  writeln('primi');
AssignFile(Out_File_Tex,MyType_TEX_FNAME_PRIMI);
  for n:=1 to Mytype_max_numero do if primi[n]=1 then writeln(n);
   writeln('difettivi');
for n:=1 to Mytype_max_numero do if difettivi[n]=1 then writeln(n);
  writeln('soprabbondanti');
for n:=1 to Mytype_max_numero do if soprabbondanti[n]=1 then writeln(n);
writeln('perfetti');
for n:=1 to Mytype_max_numero do if perfetti[n]=1 then writeln(n);
Rewrite(Out_File_Tex);
Stampa_stampatitolocapitolo(Out_File_Tex,'Primi','A000040');
Stampa_stampauno_Semplificata(Out_File_Tex,'Primi',MyType_Max_RigaMezza);
Stampa_stampavettore(Out_File_Tex,primi,MyType_Max_RigaMezza);
Stampa_chiusuralong(Out_File_Tex);
Stampa_stampatitolocapitolo(Out_File_Tex,'Difettivi','A005100');
Stampa_stampauno_Semplificata(Out_File_Tex,'Difettivi',MyType_Max_RigaMezza);
Stampa_stampavettore(Out_File_Tex,difettivi,MyType_Max_RigaMezza);
Stampa_chiusuralong(Out_File_Tex);
Stampa_stampatitolocapitolo(Out_File_Tex,'Soprabbondanti','A005100');
Stampa_stampauno_Semplificata(Out_File_Tex,'Soprabbondanti',MyType_Max_RigaMezza);
Stampa_stampavettore(Out_File_Tex,soprabbondanti,MyType_Max_RigaMezza);
Stampa_chiusuralong(Out_File_Tex);
Stampa_stampatitolocapitolo(Out_File_Tex,'Perfetti','A000396');
Stampa_stampauno_Semplificata(Out_File_Tex,'Perfetti',MyType_Max_RigaMezza);
Stampa_stampavettore(Out_File_Tex,perfetti,MyType_Max_RigaMezza);
Stampa_chiusuralong(Out_File_Tex);
CloseFile(Out_File_tex);
  end.

