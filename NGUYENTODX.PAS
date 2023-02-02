uses crt;
const fi='E:\HonNgimm\NGUYENTODX.INP';
      fo='E:\HonNgimm\NGUYENTODX.OUT';
Var a,b,i,n,dem: longint;
{-----------------------------------------}
Procedure Input;
var f: text;
Begin
 assign(f,fi); reset(f);
 read(f,a,b);
 close(f);
end;
{-----------------------------------------}
Function SNT(n: longint): boolean;
var i: longint;
Begin
 if n<2 then SNT:=False else SNT:=True;
 For i:=2 to Trunc(sqrt(n)) do
  if n mod i=0 then
   begin
    SNT:=False;
    break;
   end;
end;

function SDX(n: longint): boolean;
var s,sdao: string;
    ndao, i: longint;
Begin
 str(n,s);
 sdao:='';
 for i:=length(s) downto 1 do
  sdao:=sdao+S[i];
 val(sdao,ndao);
 if n-ndao=0 then SDX:=True else SDX:=False;
end;
{-----------------------------------------}
procedure Output;
var g: text;
begin
 assign(g,fo); rewrite(g);
  close(g);
end;
{-----------------------------------------}
Begin
clrscr;
 Input;
 for i:=a to b do
  if SNT(i) and SDX(i) then
   begin
    write(i,' ');
    inc(dem);
   end;
   writeln;
   write(dem);
readln
end.

