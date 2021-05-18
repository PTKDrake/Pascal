(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 27/11/2020
 *)
program BAI1;

function check_int(input: Integer): Boolean;
var
  i, j: Integer;
begin
  check_int := False;
  j := 0;
  for i := round(input / 2) downto 1 do
  begin
    if input mod i = 0 then j := j + i;
  end;
  if j = input then check_int := True;
end;

var
  inp, outp: Text;
  lines, i, j, max, num, t: Integer;
  arr: array[1..500] of Integer;

begin
  Assign(inp, 'BAI1.INP');
  Assign(outp, 'BAI1.OUT');
  Reset(inp);
  Rewrite(outp);
  Readln(inp, lines);
  max := 0;
  t := 0;
  for i := 1 to lines do
  begin
    ReadLn(inp, arr[i]);
    if check_int(arr[i]) then inc(t);
  end;
  Close(inp);
  WriteLn(outp, t);
  for i := 1 to lines - 1 do
    for j := i + 1 to lines do
      if arr[i] > arr[j] then
      begin
        t := arr[i];
        arr[i] := arr[j];
        arr[j] := t;
      end;
  i := 1;
  while i<lines do
  begin
    j := 1;
    t := arr[i];
    while arr[i]=arr[i+1] do
    begin
      inc(j);
      inc(i);
    end;
    if j > max then
    begin
      max := j;
      num := t;
    end;
    inc(i);
  end;
  WriteLn(outp, num);
  Close(outp);
end.
