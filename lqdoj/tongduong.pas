(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 11/10/2021
 * Info: https://ad.memcvn.net
 *)

program tongduong;

var n,i,count: Word;
a: LongInt;
sum: QWord;

begin
    readln(n);
    sum := 0;
    count := 0;
    for i := 1 to n do
    begin
        read(a);
        if a > 0 then
        begin
            sum := sum + a;
            inc(count);
        end;
    end;
    writeln(count, ' ', sum);
end.