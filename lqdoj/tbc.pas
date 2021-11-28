(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 11/10/2021
 * Info: https://ad.memcvn.net
 *)

program tbc;

var n,i,count: Word;
a: LongInt;
sum: Int64;

begin
    readln(n);
    sum := 0;
    count := 0;
    for i := 1 to n do
    begin
        read(a);
        if a < 0 then
        begin
            sum := sum + a;
            inc(count);
        end;
    end;
    if count = 0 then writeln(-1)
    else writeln(sum/count:0:2);
end.