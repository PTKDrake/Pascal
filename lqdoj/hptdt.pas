(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 11/10/2021
 * Info: https://ad.memcvn.net
 *)

program hptdt;

var n,i,mn,mx:Word;
min, max, a: LongInt;

begin
    readln(n);
    min := 9999;
    max := -9999;
    mn := 0;
    mx := 0;
    for i := 1 to n do
    begin
        read(a);
        if min > a then
        begin
            min := a;
            mn := i;
        end;
        if max < a then
        begin
            if (mx = 0) and (i = mn) then Continue;
            max := a;
            mx := i;
        end;
    end;
    writeln(mn, ' ', mx);
    writeln(max - min);
end.