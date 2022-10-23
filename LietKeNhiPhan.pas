uses crt;
const fi='D:\HonNgimm\LietKeNhiPhan.INP';
      fo='D:\HonNgimm\LietKeNhiPhan.OUT';
var x,t: array[0..100] of longint;
    b: array[0..100] of boolean;
    i,n,d: longint;
    f,g: text;
{----------------------------------------}
procedure input;
 begin
  assign(f,fi); reset(f);
   readln(f,n);
  close(f);
 end;
{----------------------------------------}
procedure xuat(d: integer);
var i: integer;
 begin
 write(n,' = ');
   for i:=1 to d-1 do write(x[i],' + ');
   write(x[d]);
  writeln;
   end;

procedure try(i: integer);
 var j: longint;
 begin
  for j:=x[i-1] to (n-t[i-1]) do
   begin
    x[i]:=j;
    t[i]:=t[i-1] + j;
    if t[i]=n then xuat(i) else try(i+1);
   end;
 end;
{----------------------------------------}
begin
clrscr;
 input;
 fillchar(B,length(b),true);
x[0]:=1;
t[0]:=0;
 try(1);
readln
end.
