(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 11/10/2021
 * Info: https://ad.memcvn.net
 *)

program soxuathien2lan;

type arr_t = array of DWord;

var n, i, count: DWord;
arr: arr_t;

procedure qsort(left, right: DWord; var ar: arr_t);
var i, j: DWord;
t, temp: DWord;
begin
    i := left;
    j := right;
    t := ar[(left + right) div 2];
    repeat
        while ar[i] < t do inc(i);
        while ar[j] > t do dec(j);
        if i <= j then
        begin
            temp := ar[i];
            ar[i] := ar[j];
            ar[j] := temp;
            inc(i);
            dec(j);
        end;
    until i > j;
    if left < j then qsort(left, j, ar);
    if right > i then qsort(i, right, ar);
end;

begin
    readln(n);
    SetLength(arr, n);
    for i := 1 to n do read(arr[i]);
    qsort(1, n, arr);
    i := 1;
    repeat
        count := 1;
        if i = n then
        begin
            writeln(arr[i], ' ', count);
            break;
        end;
        while arr[i] = arr[i+1] do 
        begin
            inc(count);
            inc(i);
        end;
        if arr[i] <> arr[i+1] then writeln(arr[i], ' ', count);
        inc(i);
    until i > n;
end.