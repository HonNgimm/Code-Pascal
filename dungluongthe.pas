uses crt;
const fi='D:\HonNgimm\Input.inp';
      fo='D:\HonNgimm\Output.out';
type Mang= array[0..100] of longint;
var Aa,Bb,X: mang;
    i,n,d,dem,a,b,sum: integer;
{----------------------------------------------}
Procedure Input;
var f: text;
 begin
  assign(f,fi); reset(f);
  readln(f,n,d);
  readln(f,a,b);
  For i:=1 to n do
   readln(f,Aa[i],Bb[i]);
  close(f);
 end;
{----------------------------------------------}
procedure xuat;
 begin
 write(sum);
  for i:=1 to n do
    writeln(Aa[i],' ',Bb[i]);
 end;

procedure try(i: integer);
var j: integer;
 begin
  for j:=1 to n do
   begin
    X[i]:=j;
    sum:= sum+(Aa[i]*a+Bb[i]*b);
    if i=n then try(i+1) else
     if sum<=d then xuat;
     Sum:=sum-(Aa[i]*a+Bb[i]*b);

  end;
 end;
{----------------------------------------------}
begin
clrscr;
 Input;
{ writeln(n,' ',d);
 writeln(a,' ',b);
 for i:=1 to n do
  writeln(Aa[i],' ',Bb[i]);  }
  sum:=0;
  Try(1);
 readln
end.
