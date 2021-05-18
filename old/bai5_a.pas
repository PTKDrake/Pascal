(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 24/11/2020
 *)
program bai5_a;
var n: Integer;
Y: Real;

begin
  Y := 0;
  for n := 1 to 50 do Y := Y + n/(n+1);
  WriteLn('Tong Y = ', Y);
end.
