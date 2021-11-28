(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 13/10/2021
 * Info: https://ad.memcvn.net
 *)

program solanxuathien;

var n,i:DWord;
list: array of DWord;
arr: array[1..1000000] of Word;

begin
    readln(n);
    SetLength(list, n);
    FillChar(arr, SizeOf(arr), 0);
    for i := 1 to n do
    begin
        read(list[i]);
        inc(arr[list[i]]);
    end;
    for i := 1 to n do
    begin
        writeln(list[i], ' ', arr[list[i]]);
    end;
end.