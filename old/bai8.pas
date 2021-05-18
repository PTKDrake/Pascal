(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 28/02/2021
 * Info: https://ad.memcvn.tk
 *)
program bai8;

uses windows, math;

var arr, arr2: array of Word;
i, j, temp, max: Word;

begin
  SetConsoleOutputCP(CP_UTF8);
  Write('Hãy nhập số lượng phần tử của dãy: ');
  Readln(max);
  SetLength(arr, max);
  SetLength(arr2, max);
  for i := 1 to max do
  begin
    write('Hãy nhập phần tử thứ ', i, ': ');
    readln(arr[i]);
  end;
  for i := 1 to max - 1 do
    for j := i + 1 to max do
      if arr[i] < arr[j] then
      begin
        temp := arr[i];
        arr[i] := arr[j];
        arr[j] := temp;
      end;
  j := 1;
  i := 1;
  while i <= ceil(max / 2) do
  begin
    arr2[j] := arr[i];
    arr2[j + 1] := arr[max + 1 - i];
    j := j + 2;
    inc(i);
  end;
  for i := 1 to max do
    write(arr[i]:3);
  writeln;
  for i := 1 to max do
    write(arr2[i]:3);
end.
