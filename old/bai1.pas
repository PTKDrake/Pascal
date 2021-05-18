(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 27/10/2020
 *)
program bai1;

var N: LongInt;
    sum: Integer;

begin
  while true do
  begin
    Write('Hay nhap so nguyen N: '); ReadLn(N);
    sum := 0;
    while N > 0 do
    begin
      sum := sum + N mod 10;
      N := N div 10;
    end;
    WriteLn('Tong: ', sum);
  end;
end.
