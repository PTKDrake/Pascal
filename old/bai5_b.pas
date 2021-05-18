(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 24/11/2020
 *)
program bai5_b;
  
var i: Integer;
f: LongInt;
e: Real;

begin
  i := 1; 
  e := 1;
  f := i;
  while 1/f >= 2E-6 do
  begin
    e := e + 1/f;
    i := i + 1;
    f := f*i;
  end;
  WriteLn('Tong e = ', e:5:4);
end.
