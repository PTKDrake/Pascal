(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 13/10/2021
 * Info: https://ad.memcvn.net
 *)

program vitrisoduong;

var n,i:Word;
l,r,a: LongInt;

begin
    readln(n);
    l := -1;
    r := -1;
    for i := 1 to n do
    begin
        read(a);
        if a > 0 then
        begin
            if l = -1 then l := i
            else r := i;
        end;
    end;
    writeln(l, ' ', r);
end.