(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 11/11/2020
 *)
program bai3;

Function snt(a: Integer): Boolean;
var i: Integer;
begin
  snt := True;
  for i := round(sqrt(a)) downto 2 do
  begin
    if a mod i = 0 then
    begin
      snt := False;
      break;
    end
    else if i = 2 then write(a, ', ');
  end;
end;

const N = 10;
var arr: array[0..N] of Integer;
  start, i, count: Integer;
begin
  while true do
  begin
    count := 0;
    Write('Hay nhap so bat dau: ');ReadLn(start);
    for i:=0 to 100 do
    begin
      arr[i] := start;
      start := start + 1;
    end;
    WriteLn('Da nhap mang so nguyen tu ', arr[0], ' den ', arr[N]);
    WriteLn('Dang kiem tra cac so nguyen to...');
    for i:=arr[0] to arr[N] do
    begin
      if snt(i) then count := count + 1;
    end;
    WriteLn('Co ', count, ' so nguyen to.');
  end;
end.
