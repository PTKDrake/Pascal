(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 18/05/2021
 * Info: https://ad.memcvn.tk
 *)
program bai2;

uses windows;

var f1, f2: text;
a, a2: array[1..10000] of word;
i, j, max, loop, count, s, e, st, et: word;

begin
  SetConsoleOutputCP(CP_UTF8);
  assign(f1, 'INPUT.INP');
  assign(f2, 'OUTPUT.OUT');
  reset(f1);
  rewrite(f2);
  readln(f1, max);
  for i := 1 to 10000 do
    a2[i] := 0;
  for i := 1 to max do
  begin
    readln(f1, a[i]);
    inc(a2[a[i]]);
  end;
  loop := 1;
  count := a2[1];
  for i := 2 to max do
    if count < a2[i] then
    begin
      loop := i;
      count := a2[i];
    end;
  writeln(f2, loop, ' ', count);
  s := 1;
  e := 1;
  for i := 1 to max - 1 do
  begin
    st := i;
    et := i;
    if a[i] < a[i + 1] then
    for j := i + 1 to max do
      if a[et] < a[j] then et := j
      else continue;
    if et - st > e - s then
    begin
      s := st;
      e := et;
    end;
  end;
  writeln(f2, e - s + 1);
  for i := s to e do
    writeln(f2, a[i]);
  close(f1);
  close(f2);
end.
