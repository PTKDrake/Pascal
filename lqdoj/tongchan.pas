(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 11/10/2021
 * Info: https://ad.memcvn.net
 *)

program tongchan;

var n,i: Word;
a: LongInt;
sum: Int64;

begin
    readln(n);
    sum := 0;
    for i := 1 to n do
    begin
        read(a);
        if abs(a) mod 2 = 0 then
        begin
            sum := sum + a;
        end;
    end;
    writeln(sum);
end.