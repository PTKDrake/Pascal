(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 18/05/2021
 * Info: https://ad.memcvn.tk
 *)
program bai1;

uses windows;

var N, a: integer;

function reverse(b: Integer): Integer;
begin
  reverse := 0;
  while b > 0 do
  begin
    reverse := reverse * 10 + b mod 10;
    b := b div 10;
  end;
end;

begin
  SetConsoleOutputCP(CP_UTF8);
  write('Nhập N: ');
  readln(N);
  writeln('Các số có bình phương là panlindrom: ');
  for a := 4 to N do
  begin
    if sqr(a) = reverse(sqr(a)) then write(a:5, ': ', sqr(a));
  end;
  writeln;
  writeln('Các số panlindrom có bình phương là panlindrom: ');
  for a := 11 to N do
  begin
    if a = reverse(a) then write(a:5);
  end;
end.
