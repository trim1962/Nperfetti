unit MyMath;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
     function MyMathSigma(n:longint):longint;
     function MyMathThau(n:longint):longint;
implementation
   function MyMathSigma(n:longint):longint;
   var
     somma,i:longint;
     begin
      somma:=1;
  i:=2;
  if n<1 then MyMathSigma:=0;
    while i < n do
      begin
        If(n mod i = 0) Then Somma:=Somma+i;
        i:= i+1;
      end;
    MyMathSigma:=somma;
     end;

    function MyMathThau(n:longint):longint;
   var
     conta,i:longint;
     begin
      conta:=1;
  i:=2;
  if n<1 then MyMathSigma:=0;
    while i < n do
      begin
        If(n mod i = 0) Then conta:=Conta+1;
        i:= i+1;
      end;
    MyMathSigma:=conta;
     end;
end.

