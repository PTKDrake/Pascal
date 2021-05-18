(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 24/02/2021
 *)
program tong;

uses windows;

var arr: array[1..7] of Word;
i: Byte;
S: Word;

begin
  SetConsoleOutputCP(CP_UTF8);
  S := 0;
  for i := 1 to 7 do
  begin
    Write('Hãy nhập phần tử thứ ', i, ':');
    ReadLn(arr[i]);
  end;
  Write('Các phần tử đã nhập: ');
  for i := 1 to 7 do
  begin
    Write(arr[i]:5);
    if arr[i] mod 3 = 0 then S := S + arr[i];
  end;
  WriteLn();
  WriteLn('Tổng các phần tử chia hết cho 3: ', S);
end.
