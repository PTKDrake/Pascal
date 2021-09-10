(*
 * Project: De2018_2019_B
 * Author: PTKDrake
 * Date: 10/9/2021
 * Info: https://ad.mcmevn.com
 *)

program pnum;

var
  f1, f2: Text;
  m, n, u, v, k, i: LongWord;
  arr: array of LongWord;

function isPerfect(num: LongWord): Boolean;
var a, sum: LongWord;
begin
    sum := 0;
    for a := 1 to round(num / 2) + 1 do if num mod a = 0 then
    sum := sum + a;
    exit(num = sum);
end;

begin
    assign(f1, 'pnum.INP');
    assign(f2, 'pnum.OUT');
    reset(f1);
    rewrite(f2);
    read(f1, n, m);
    SetLength(arr, n);
    for i := 1 to n do arr[i] := 0;
    for i := 1 to m do
    begin
        read(f1, u, v, k);
        for u := u to v do arr[u] := arr[u] + k;
    end;
    for i := 1 to n do 
    if isPerfect(arr[i]) then writeln(f2, i);
    close(f1);
    close(f2);
end.