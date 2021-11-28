(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 13/10/2021
 * Info: https://ad.memcvn.net
 *)

program helpconan;

var t,i,n,j,max:Word;
arr: array[1..10000] of Word;

begin
    readln(t);
    arr[1] := 1;
    for i := 1 to t do
    begin
        readln(n);
        max := 0;
        for j := 1 to n div 2 do
        begin
            arr[j * 2] := arr[j];
            if arr[j] > max then max := arr[j];
            if (j = n div 2) and (n mod 2 = 0) then break;
            arr[j + 2 + 1] := arr[j] + arr[j * 2];
            if arr[j + 2 + 1] > max then max := arr[j + 2 + 1];
        end;
        writeln(max);
    end;
end.