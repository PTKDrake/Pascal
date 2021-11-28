(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 25/11/2021
 * Info: https://ad.memcvn.net
 *)

program plugin;

uses Math;

type arr_t = array of Byte;

var n,m,i: Word;
arr: arr_t;
count: Integer;

procedure qsort(l,r: Word; var a: arr_t);
var i,j: Word;
t,temp: Byte;
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
    readln(n,m);
    SetLength(arr, n);
    for i := 1 to n do read(arr[i]);
    qsort(1, n, arr);
    i := 1;
    count := 0;
    while m > 0 do
    begin
        if m > arr[i] then
        begin
            m := m - arr[i] + 1;
        end
        else
        begin
            if arr[i] = 1 then dec(m)
            else m := m - m;
        end;
        inc(count);
        inc(i);
        if i = n then
        begin
            count := -1;
            break;
        end;
    end;
    writeln(count);
end.