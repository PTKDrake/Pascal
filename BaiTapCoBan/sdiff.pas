(*
 * Project: BaiTapCoBan
 * Author: PTKDrake
 * Date: 9/11/2021
 * Info: https://ad.memcvn.net
 *)

program sdiff;

type arr_t = array of LongInt;

var n,i,c:dWord;
md,tp:LongInt;
arr: arr_t;
kq: array of record
a:LongInt;
b:LongInt;
end;

procedure qsort(l,r:dword;var a: arr_t);
var i,j:dword;
t,temp: longint;
begin
    i := l;
    j := r;
    t := a[(l+r) div 2];
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
    setlength(arr, n);
    setlength(kq, n);
    for i := 1 to n do read(arr[i]);
    qsort(1,n,arr);
    md := 10000001;
    for i := 1 to n - 1 do
    begin
        tp := abs(arr[i+1]-arr[i]);
        if tp < md then
        begin
            md := tp;
            c := 1;
            kq[c].a := arr[i];
            kq[c].b := arr[i+1];
        end
        else if tp = md then
        begin
            inc(c);
            kq[c].a := arr[i];
            kq[c].b := arr[i+1];
        end;
    end;
    for i := 1 to c do writeln(kq[i].a, ' ', kq[i].b);
end.