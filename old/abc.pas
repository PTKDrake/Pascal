(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 03/03/2021
 * Info: https://ad.memcvn.tk
 *)
program abc;

uses windows;

var arr: array[1..10000] of Integer;
i,n, s,count: Word;

begin
  SetConsoleOutputCP(CP_UTF8);
  s := 0;
  count := 0;
  write('Hãy nhập số lượng phần tử: ');
  readln(n);
  for i := 1 to n do
  begin
    write('Hãy nhập phần tử số ', i, ': ');
    readln(arr[i]);
  end;
  for i := 1 to n do
    if arr[i] > 0 then
      begin
        s := s + arr[i];
        count := count + 1;
      end;
  writeln;
  writeln('Tổng: ', s, ' số phần tử dương: ', count);
end.
