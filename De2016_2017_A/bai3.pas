(*
 * Project: De2016_2017_A
 * Author: PTKDrake
 * Date: 8/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai3;

var
  f1, f2: Text;
  a, b: array[1..100000] of LongWord;
  m, n, i, j, count: LongWord;

function appendNum(pre, fol: LongWord): QWord;
var s: string;
k: LongWord;
begin
    str(fol, s);
    appendNum := pre;
    for k := 1 to length(s) do appendNum := appendNum * 10;
    appendNum := appendNum + fol;
end;

begin
    assign(f1, 'bai3.INP');
    assign(f2, 'bai3.OUT');
    reset(f1);
    rewrite(f2);
    read(f1, n, m);
    for i := 1 to n do read(f1, a[i]);
    for i := 1 to m do read(f1, b[i]);
    for i := 1 to m do
    begin
        count := 0;
        for j := 1 to n do
        if appendNum(b[i], a[j]) mod 3 = 0 then inc(count);
        writeln(f2, count);
    end;
    close(f1);
    close(f2);
end.