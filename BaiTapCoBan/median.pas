(*
 * Project: BaiTapCoBan
 * Author: PTKDrake
 * Date: 9/11/2021
 * Info: https://ad.memcvn.net
 *)

program median;

type arr_t = array of LongInt;

var n,i: DWord;
arr: arr_t;

procedure qsort(l,r:DWord; var a: arr_t);
var i,j: DWord;
t,temp: LongInt;
begin
    i := l;
    j := r;
    t := a[(l + r) div 2];
    repeat
        while a[i] < t do inc(i);
        while a[j] > t do dec(j);
        if i <= j then
        begin
            temp := a[i];
            a[i] := a[j];
            a[j] := temp;
            inc(i);
            dec(j);
        end;
    until i > j;
    if i < r then qsort(i,r,a);
    if j > l then qsort(l,j,a);
end;

begin
    readln(n);
    SetLength(arr, n);
    for i := 1 to n do read(arr[i]);
    qsort(1,n,arr);
    writeln(arr[n div 2 + 1]);
end.