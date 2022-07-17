Uses crt;
Var n,m:longint;
    a,b,c:array[0..100] of longint;
    d:array[0..100] of real;
{---------------------------------------------------------------------}
Procedure tinh;
Var j,k,m1:longint;
    t:real;
    d1:array[0..100] of real;
    c1:array[0..100] of longint;
Begin
  m1:=m;
   For j:=1 to m+1 do
    Begin
     c1[j]:=c[j];
     d1[j]:=d[j];
    End;
  j:=0;t:=0;
  While j<m1 do
   Begin
    j:=j+1;
          if c1[j]=3 then
          Begin
            d1[j]:=d1[j]*d1[j+1];
            For k:=j to m1-1 do
            c1[k]:=c1[k+1];
            For k:=j+1 to m1 do
            d1[k]:=d1[k+1];
            m1:=m1-1; j:=0;
          End
          else if c1[j]=4 then
          Begin
            d1[j]:=d1[j]/d1[j+1];
            For k:=j to m1-1 do
            c1[k]:=c1[k+1];
            For k:=j+1 to m1 do
            d1[k]:=d1[k+1];
            m1:=m1-1;j:=0;
          End;
  End;
  if m1=0 then t:=d1[1];
  if m1<>0 then
    Begin
     For j:=1 to m1 do
       if c1[j]=2 then d1[j+1]:=0-d1[J+1];
     For j:=1 to m1+1 do
       t:=t+d1[j];
    End;
if t=n then begin
For j:=1 to m do
     Begin
     Write(d[j]:0:0);
     if c[j]=1 then write('+');
     if c[j]=2 then write('-');
     if c[j]=3 then write('*');
     if c[j]=4 then write('/');
     End;  writeln(d[m+1]:0:0,'=',n) end;
End;
{---------------------------------------------------------------------}
Procedure ghep_so;
Var j,z,y:longint;
    t:real;
Begin
   fillchar(d,sizeof(d),0);
   For j:=1 to m do
     For z:=b[j-1]+1 to b[j] do    d[j]:=d[j]*10+z;

   For z:=b[m]+1 to 9 do    d[m+1]:=d[m+1]*10+z;
     tinh;
 End;
{---------------------------------------------------------------------}
Procedure kt(k:longint);
Var j:Longint;
Begin
  For j:=1 to 4 do
     Begin
       c[k]:=j;
       if k=m then ghep_so;
       if k<m then kt(k+1);
     End;
end;
{---------------------------------------------------------------------}
Procedure tao_mang;
Var j:longint;
Begin
  m:=0;
  For j:=1 to 8 do
    Begin
      if a[j]=1 then
        begin
          m:=m+1;
          b[m]:=j;
        End;
    End;
  kt(1);
End;
{---------------------------------------------------------------------}
Procedure try(i:longint);
Var j:longint;
Begin
  For j:=0 to 1 do
    Begin
     a[i]:=j;
     If i=8 then tao_mang Else try(i+1);
    End;
End;
{---------------------------------------------------------------------}
Begin
   Clrscr;
     Write('Nhap so N= ');readln(n);
    Try(1);
   Readln;
End.
