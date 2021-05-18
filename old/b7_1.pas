(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 29/01/2021
 *)
program b7_1;

var i, j: Integer;

begin
  {for i := 0 to 99 do
  begin
    if i mod 10 = 0 then WriteLn();
    Write(i:3);
  end;}
  for i := 0 to 9 do
  begin
    for j := 0 to 9 do
      write(i*10+j:3);
    writeln();
  end;
end.
