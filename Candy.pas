uses crt;
const fi='D:\Code\CANDY\CANDY.INP';
      fo='D:\Code\CANDY\CANDY.OUT';
type mang= array[1..1000] of longint;
     mang2= array[0..1000,0..1000] of longint;
var A,b,c,VT: mang;
    f: mang2; 
    n,i,sum,j,m,s,max,d: longint;
{----------------------------------------------}
procedure input;
var f: text;
begin
 assign(f,fi); reset(f);
 read(f,n);
 for i:=1 to n do
  read(f,A[i]);
 for i:=1 to n do
  Vt[i]:=i;
 s:=0; Sum:=0;
 for i:=1 to n do
  Sum:=Sum+A[i];
 S:=Sum div 2;
 close(f);
end;
{-------------------------------------------}
function max2(a,b: integer): longint;
begin
 if a>b then max2:=a else max2:=b;
end;
{-------------------------------------------}
procedure QHD;
begin
 fillchar(f,sizeof(f),0);
 for i:=1 to n do
  for j:=1 to s do
   begin
    if j>=A[i] then f[i,j]:=max2(f[i-1,j],f[i-1,j-A[i]]+A[i])
    else f[i,j]:=f[i-1,j];
   end;
end;
{---------------------------------------------}
procedure truyvet;
begin
 max:=0;
 for i:=1 to n do
  for j:=1 to s do
   if max<f[i,j] then max:=f[i,j];
 d:=0;
 while i>0 do
  begin
   if f[i,j] <> F[i-1,j] then
    begin
       inc(d);
        Vt[d]:=i;
        C[i]:=i;
     j:=j-A[i];
    end else
   i:=i-1;
  end;
end;
{---------------------------------------}
procedure output;
//var g: text;
begin
 //assign(g,fo); rewrite(g);
 writeln(d,' ',max);
 for i:=d downto 1 do
  write(VT[i],' ');
 writeln;
 writeln(n-d,' ',sum-max);
 for i:=1 to n do
  if A[i] <> C[i] then write(a[i],' ');
end;
{----------------------------------------}
begin
clrscr;
 input;
 QHD;
 Truyvet;
 writeln(sum);
 for i:=1 to n do
 begin
 writeln;
  for j:=1 to s do
   write(f[i,j],' ');
   end;
   writeln;
 output;
readln;
end.
