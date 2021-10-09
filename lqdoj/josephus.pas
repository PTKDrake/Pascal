(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 7/10/2021
 * Info: https://ad.memcvn.net
 *)

program josephus;

var p, n, nn: qword;
q, i: 1..10;
BEGIN
    readln(q);
    for i := 1 to q do
    begin
        readln(n); 
        p := 2 * n;
        nn := n + 1;
        while p > n do 
        p := p + (p - nn) div 1 - n;
        writeln(p);
    end;
END.