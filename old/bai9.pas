(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 28/02/2021
 * Info: https://ad.memcvn.tk
 *)
program bai9;

uses windows;

var i, N, M, max: Integer;

begin
  SetConsoleOutputCP(CP_UTF8);
  write('Hãy nhập N: ');
  readln(N);
  max := N;
  write('Dãy số: ', N:5);
  for i := 2 to max do
  begin
    M := 0;
    while N > 0 do
    begin
      M := M + sqr(N mod 10);
      N := N div 10;
    end;
    N := M;
    write(M:5);
  end;
end.
