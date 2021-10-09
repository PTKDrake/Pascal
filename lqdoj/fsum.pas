(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 9/10/2021
 * Info: https://ad.memcvn.net
 *)

program fsum;

var x,n,pro: QWord;
sum: Word;
k: Byte;

{function to_string(num: QWord): String;
var s: String;
begin
    s := '';
    while num > 0 do
    begin
        s := chr(num mod 10 + ord('0')) + s;
        num := num div 10;
    end;
    exit(s);
end;}

begin
    readln(x);
    readln(n);
    while n > 1 do
    begin
        sum := 0;
        pro := 1;
        while x > 0 do 
        begin
            k := x mod 10;
            sum := sum + k;
            if k <> 0 then pro := pro * k;
            x := x div 10;
        end;
        x := sum + pro;
        dec(n);
    end;
    writeln(x);
end.