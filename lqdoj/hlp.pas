(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 6/10/2021
 * Info: https://ad.memcvn.net
 *)

program hlp;

var q, i, count: 0..100;
a, b: DWord;

function isPrime(num: DWord): Boolean;
var j: DWord;
begin
    if num < 2 then exit(False);
    for j := 2 to trunc(sqrt(num)) do if num mod j = 0 then exit(False);
    exit(True);
end;

begin
    readln(q);
    for i := 1 to q do
    begin
        readln(a);
        if a < 2 then writeln(0)
        else begin
            count := 0;
            b := a - 1;
            if isPrime(sqr(a) + a*b + sqr(b)) then inc(count);
            writeln(count);
        end;
    end;
end.