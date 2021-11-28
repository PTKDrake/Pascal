(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 11/10/2021
 * Info: https://ad.memcvn.net
 *)

program arr01;

var n,i,a,max,pmax:DWord;

begin
    readln(n);
    max := 0;
    pmax := 0;
    for i := 1 to n do
    begin
        read(a);
        if a > max then
        begin
            max := a;
            pmax := i;
        end;
    end;
    writeln(max);
    writeln(pmax);
end.