(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 11/10/2021
 * Info: https://ad.memcvn.net
 *)

program arr11;

var n,x,i,a,count:DWord;

begin
    readln(n,x);
    count := 0;
    for i := 1 to n do
    begin
        read(a);
        if a = x then inc(count);
    end;
    writeln(count);
end.