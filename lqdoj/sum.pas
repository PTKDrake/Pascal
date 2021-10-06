(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 6/10/2021
 * Info: https://ad.memcvn.net
 *)

program sum;

var s, a: Int64;

begin
    read(a);
    s := 0;
    while a <> 0 do
    begin
        s := s + a;
        read(a);
    end;
    writeln(s);
end.