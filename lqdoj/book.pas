(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 25/11/2021
 * Info: https://ad.memcvn.net
 *)

program book;

type arr_t = array of DWord;

var n,i: DWord;
arr: arr_t;
sum: QWord;

procedure qsort(l,r: DWord; var a: arr_t);
var i, j, t, temp: DWord;
begin
    i := l;
    j := r;
    t := a[(l+r) div 2];
    repeat
        while a[i] > t do inc(i);
        while a[j] < t do dec(j);
        if i <= j then
        begin
            temp := a[i];
            a[i] := a[j];
            a[j] := temp;
            inc(i);
            dec(j);
        end;
    until i > j;
    if i < r then qsort(i, r, a);
    if j > l then qsort(l, j, a);
end;

begin
    readln(n);
    SetLength(arr, n);
    for i := 1 to n do read(arr[i]);
    qsort(1, n, arr);
    sum := 0;
    for i := 1 to n do
    begin
        if not (i mod 3 = 0) then sum := sum + arr[i];
    end;
    writeln(sum);
end.