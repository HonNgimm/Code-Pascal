Uses crt;
const fi='E:\HonNgimm\ROAD.INP';
      fo='E:\HonNgimm\ROAD.OUT';
Var A,K,U,V,L: array[1..100] of longint;
    i,j,n,m:longint;
{--------------------------------}
procedure Input;
var f: text;
begin
 assign(f,fi); reset(f);
 read(f,n,m);
 for i:=1 to m do
  read(f,K[i],U[i],V[i],L[i]);
 close(f);
end;
{----------------------------------}
Procedure Path (x: integer);
Begin
     if x < > 1 then
     Begin
          Path (p[x]);
         Write (x: 3); ‘.
    end;
end;
{----------------------------------}
Begin
 clrscr;
 input;
 write(n,' ',m); writeln;
 for i:=1 to m do
  begin
   write(K[i],' ',U[i],' ',V[i],' ',L[i]);
   writeln;
  end;
 readln;
end.
