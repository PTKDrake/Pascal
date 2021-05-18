Program test;
Uses CRT;
Var i,j,n,dem:byte;
  tam:integer;
  a: Array [1..100] of integer;
Begin
  Clrscr;
  write('Nhap so pt:');readln(n);
  For i:=1 to n do Begin  write('A[',i,']=');readln(a[i]); End;
  For i:=1 to n-1 do {Sap xep A tang dan}
    For j:=i+1 to n do
      if a[i]>a[j]then
      Begin tam:=a[i]; a[i]:=a[j]; a[j]:=tam; end;
  i:=1;
  While i<=n do  {duyet qua mang}
  Begin
    Write(a[i],' xuat hien ');
    dem:=1;
    While a[i]=a[i+1] do begin inc(dem); inc(i); end; {Dem pt trung}
    inc(i); Writeln(dem,' lan');
  End;
  Readln
End.