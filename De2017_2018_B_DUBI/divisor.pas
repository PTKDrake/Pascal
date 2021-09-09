(*
 * Project: De2017_2018_B_DUBI
 * Author: PTKDrake
 * Date: 9/9/2021
 * Info: https://ad.mcmevn.com
 *)

program divisor;

Uses Math;

type ar = array[1..1000000] of LongWord;

var
  f1, f2: Text;
  arr: ar;
  n, num, a, i: LongWord;

function countDivisor(num: LongWord): LongWord;
var k: LongWord;
begin
    countDivisor := 1;
    for k := 1 to ceil(num / 2) do if num mod k = 0 then inc(countDivisor);
end;

function existsValue(a: ar; v, l: LongWord): Boolean;
var k: LongWord;
begin
    for k := 1 to l do if a[k] = v then exit(True);
    exit(False);
end;

begin
    assign(f1, 'divisor.INP');
    assign(f2, 'divisor.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    a := 1;
    for i := 1 to n do
    begin
        read(f1, num);
        num := countDivisor(num);
        if i = 1 then arr[1] := num
        else if not existsValue(arr, num, a) then
        begin
            inc(a);
            arr[a] := num;
        end;
    end;
    writeln(f2, a);
    close(f1);
    close(f2);
end.