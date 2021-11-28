(*
 * Project: Them
 * Author: PTKDrake
 * Date: 17/10/2021
 * Info: https://ad.memcvn.net
 *)

program sortlengthstring;

type arr_t = array of string;

var n,i: Word;
arr: arr_t;

procedure sls(l,r: byte; var a: arr_t);
var i,j,t: byte;
temp: string;
begin
    i := l;
    j := r;
    t := length(a[(l + r) div 2]);
    repeat
        while length(a[i]) < t do inc(i);
        while length(a[j]) > t do dec(j);
        if i <= j then
        begin
            temp := a[i];
            a[i] := a[j];
            a[j] := temp;
            inc(i);
            dec(j);
        end;
    until i > j;
    if l < j then sls(l, j, a);
    if r > i then sls(i, r, a);
end;

begin
    readln(n);
    SetLength(arr, n);
    for i := 1 to n do readln(arr[i]);
    sls(1, n, arr);
    for i := 1 to n do writeln(arr[i]);
end.