(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 11/10/2021
 * Info: https://ad.memcvn.net
 *)

program sumarr;

type arr_t = array of DWord;

var n,i,a:DWord;
c: arr_t;

begin
    readln(n);
    SetLength(c, n);
    for i := 1 to n do read(c[i]);
    for i := 1 to n do
    begin
        read(a);
        c[i] := c[i] + a;
    end;
    for i := 1 to n do write(c[i], ' ');
end.