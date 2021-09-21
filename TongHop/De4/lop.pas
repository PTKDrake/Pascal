(*
 * Project: TongHop/De4
 * Author: PTKDrake
 * Date: 20/9/2021
 * Info: https://ad.mcmevn.com
 *)

program lop;

var
  f1, f2: Text;
  arr, arr2: array[1..65530] of Word;
  i, k, l, c, n: Word;

function countCD(num: Word): Word;
var t: Word;
begin
    countCD := 2;
    for t := 2 to num div 2 do if num mod t = 0 then inc(countCD);
end;

begin
    assign(f1, 'lop.INP');
    assign(f2, 'lop.OUT');
    reset(f1);
    rewrite(f2);
    FillChar(arr, SizeOf(arr), 0);
    FillChar(arr2, SizeOf(arr2), 0);
    readln(f1, n);
    c := 0;
    for i := 1 to n do
    begin
        read(f1, l);
        k := countCD(l);
        writeln(l, ' ', k);
        inc(arr[k]);
        if arr[k] = 1 then 
        begin
            inc(c);
            arr2[c] := k;
        end;
    end;
    writeln(f2, c);
    for i := 1 to c do writeln(f2, arr2[i], ' ', arr[arr2[i]]);
    close(f1);
    close(f2);
end.