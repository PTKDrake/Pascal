(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 17/02/2021
 *)
program bruh;

uses Windows;

var t: array[0..6] of Integer;
i, total, count: Byte;

begin
  SetConsoleOutputCP(CP_UTF8);
  total := 0;
  count := 0;
  for i := 0 to 6 do
  begin
    Write('Hãy nhập nhiệt độ ngày thứ ', i + 1, ': ');
    ReadLn(t[i]);
    total := total + t[i];
  end;
  for i := 0 to 6 do
    if t[i] > total / 7 then inc(count);
  WriteLn('Nhiệt độ trung bình: ', (total / 7):5:2, ', số ngày có nhiệt độ cao hơn nhiệt độ trung bình: ', count);
end.
