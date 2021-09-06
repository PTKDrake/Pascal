(*
 * Project: De2015_2016_A
 * countuthor: PTKDrake
 * Date: 6/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai2;

var
  f1, f2: Text;
  arr: array[1..100000] of Longword;
  count, i, j: Longword;

begin
    assign(f1, 'bai2.INP');
    assign(f2, 'bai2.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, count);
    FillChar(arr, 100000, 0);
    for i := 1 to count do
    begin
      readln(f1, j);
      inc(arr[j]);
    end;
    j := 0;
    for i := 1 to 100000 do if arr[i] > j then j := arr[i];
    for i := 1 to 100000 do
    if arr[i] = j then writeln(f2, i);
    close(f1);
    close(f2);
end.