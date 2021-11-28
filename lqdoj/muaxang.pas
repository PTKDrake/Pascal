(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 13/10/2021
 * Info: https://ad.memcvn.net
 *)

program muaxang;

var n,a,b: DWord;

begin
    readln(n);
    readln(a,b);
    if b / 2 > a then writeln(n * a)
    else writeln((n div 2) * b + (n mod 2) * a);
end.