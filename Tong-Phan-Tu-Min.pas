Uses crt;
var s,i,n,m,dem,j,tam: longint;
    A,B: array[0..10000] of longint;
const fi='D:\code\Tong-Phan-Tu-Min\input.inp';
      fo='D:\code\Tong-Phan-Tu-Min\output.out';
{-------------------------------------------}
procedure input;
var f: text;
 Begin
  assign(f,fi); reset(f);
  n:=0;
  read(f,m);
  while not eof(f) do
   begin
    n:=n+1;
    read(f,A[n]);
   end;
  close(f);
 end;
{-------------------------------------------}
Procedure Xuli(m:longint);
 Begin
  for i:=1 to n do
   for j:=1 to n do
    if A[i]<A[j] then
     begin
      tam:=A[i];
      A[i]:=A[j];
      A[j]:=tam;
     end;
  for i:=1 to n do
   if A[i]<=m then dem:=dem+1;
 end;
{--------------------------------------------}
procedure TruyVet_Output;
var g: text;
Begin
 assign(g,fo); rewrite(g);
 for i:=1 to dem do
  S:=S+A[i];
 writeln(g,s);
 close(g);
end;
{---------------------------------------------}
Begin
clrscr;
 Dem:=0; S:=0;
 Input;
 Xuli(m);
 TruyVet_Output;
readln;
end.
