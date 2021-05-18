(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 25/02/2021
 * Info: https://ad.memcvn.tk
 *)
program b4;

uses windows;

var arr: array of Word;
i, j, max: Word;

begin
  SetConsoleOutputCP(CP_UTF8);
  write('Hãy nhập số phần tử của mảng: ');
  ReadLn(max);
  SetLength(arr, max);
  for i := 1 to max do
  begin
    Write('Hãy nhập phần tử thứ ', i, ': ');
    ReadLn(arr[i]);
  end;
  for i := 1 to max - 1 do
  begin
    j := i + 1;
    while j <= max do
      if arr[i] = arr[j] then
      begin
        Delete(arr, j, 1);
        Dec(max);
      end
      else Inc(j);
  end;
  Write('Danh sách các phần tử của mảng: ');
  for i := 1 to max do Write(arr[i]:5);
end.
