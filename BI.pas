uses crt;
const fi='D:\HonNgimm_\BI.INP';
      fo='D:\HonNgimm_\BI.OUT';
var A,x,y,s: array[1..10000] of longint;
    i,j,n,m,q,z: longint;
{-------------------------------------------}
procedure Input;
var f: text;
begin
 assign(f,fi); reset(f);
 read(f,n,q);
  for i:=1 to n do
   read(f,A[i]);
  for i:=1 to Q do
   readln(f,x[i],y[i]);
  close(f);
end;
{--------------------------------------------}
procedure Xuli;
begin
  for i:=1 to q do
   begin
    for z:=x[i] to y[i] do
     S[i]:=S[i]+z;
 end;
end;
{-------------------------------------------}
procedure Output;
begin
  for i:=1 to q do
  writeln(S[i]);
end;
{-------------------------------------------}
begin
clrscr;
input;
xuli;
Output;
readln;
end.