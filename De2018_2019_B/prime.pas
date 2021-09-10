(*
 * Project: De2018_2019_B
 * Author: PTKDrake
 * Date: 10/9/2021
 * Info: https://ad.mcmevn.com
 *)

program prime;

var
  f1, f2: Text;
  n, m, u, v, i, count: Word;
  arr: array of LongWord;

function isPrime(num: LongWord): Boolean;
var a: LongWord;
begin
    if num <= 3 then exit(True);
    for a := 2 to round(sqrt(num)) + 1 do if num mod a = 0 then exit(False);
    exit(True);
end;

begin
    assign(f1, 'prime.INP');
    assign(f2, 'prime.OUT');
    reset(f1);
    rewrite(f2);
    read(f1, n, m);
    SetLength(arr, n);
    for i := 1 to n do read(f1, arr[i]);
    for i := 1 to m do
    begin
        count := 0;
        read(f1, u, v);
        for u := u to v do if isPrime(arr[u]) then inc(count);
        writeln(f2, count);
    end;
    close(f1);
    close(f2);
end.