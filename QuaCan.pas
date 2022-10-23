uses crt;
const fi='D:\HonNgimm\QuaCan.INP';
      fo='D:\HonNgimm\QuaCan.OUT';
var i,n,sum,m,d: longint;
    A,x: array[1..100] of longint;
    f,g: text;
{----------------------------------------}
procedure Input;
 begin
  assign(f,fi); reset(f);
   read(f,n,m);
   for i:=1 to n do
    read(f,A[i]);
  close(f);
 end;
{------------------------------------------}
procedure xuat;
var i: integer;
 begin
  write('So cach ',d,' : ');
  for i:=1 to n do
    if x[i]=1 then
     write(A[i],' ');
     writeln;
 end;

procedure try(i: integer);
 var j: longint;
 begin
  for j:=0 to 1 do
   begin
    x[i]:=j;
    sum:= sum + A[i]*j;
    if i<n then try(i+1) else
    if sum=m then begin xuat; d:=d+1; end;
    sum:= sum - A[i]*j;
    end;
 end;
{------------------------------------------}
Begin
clrscr;
 d:=1;
 Input;
  try(1);
 readln
end.