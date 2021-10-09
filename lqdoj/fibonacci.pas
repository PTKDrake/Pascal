(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 7/10/2021
 * Info: https://ad.memcvn.net
 *)

program fibonacci;

var n, i: 1..90;

function find_fibonacci(num: DWord): DWord;
begin
    if (num = 1) or (num = 2) then exit(1);
    exit(find_fibonacci(num - 1) + find_fibonacci(num - 2));
end;

begin
    readln(n);
    for i := 1 to n do 
    write(find_fibonacci(i), ' ');
end.