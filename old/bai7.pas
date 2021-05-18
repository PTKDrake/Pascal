(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 28/02/2021
 * Info: https://ad.memcvn.tk
 *)
program bai7;

uses windows, math;

var arr: array of Word;
i, max: Word;

begin
  SetConsoleOutputCP(CP_UTF8);
  Write('Hãy nhập số lượng phần tử của dãy: ');
  Readln(max);
  SetLength(arr, max);
  for i := 1 to max do
  begin
    write('Hãy nhập phần tử thứ ', i, ': ');
    readln(arr[i]);
  end;
  for i := 1 to floor(max / 2) do
    if arr[i] <> arr[max + 1 - i] then
    begin
      write('Dãy số này không phải dãy số đối xứng.');
      break;
    end
    else if i = floor(max / 2) then write('Dãy số này là dãy số đối xứng');
end.
