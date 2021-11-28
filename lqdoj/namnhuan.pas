(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 13/10/2021
 * Info: https://ad.memcvn.net
 *)

program namnhuan;

var q,i:1..10;
n:DWord;

begin
    readln(q);
    for i := 1 to q do
    begin
        readln(n);
        if n mod 100 <> 0 then
        begin
            if n mod 4 = 0 then writeln('YES')
            else writeln('NO');
        end else if n mod 400 = 0 then writeln('YES')
        else writeln('NO');
    end;
end.