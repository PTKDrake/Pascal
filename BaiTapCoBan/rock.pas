(*
 * Project: BaiTapCoBan
 * Author: PTKDrake
 * Date: 17/11/2021
 * Info: https://ad.memcvn.net
 *)

program rock;

type arr_t = array[0..50010] of DWord;

var l,s,e,mi,res: DWord;
m,n,i: Word;
arr: arr_t;

procedure qsort(l,r: Word; var a: arr_t);
var p,q: Word;
mid, temp: DWord;
begin
    p := l;
    q := r;
    mid := a[(l+r) div 2];
    repeat
        while a[p] < mid do inc(p);
        while a[q] > mid do dec(q);
        if p <= q then
        begin
            temp := a[p];
            a[p] := a[q];
            a[q] := temp;
            inc(p);
            dec(q);
        end;
    until p > q;
    if p < r then qsort(p, r, a);
    if q > l then qsort(l, q, a);
end;

function check(x: DWord): boolean;
var last, p, hit: Word;
begin
    last := 0;
    for p := 1 to n + 1 do
    begin
        if arr[p] - arr[last] < x then inc(hit)
        else last := p;
    end;
    exit(hit <= m);
end;

begin
    readln(n);
    for i := 1 to n do read(arr[i]);
    arr[0] := 0;
    arr[n+1] := l;
    qsort(0, n + 1, arr);
    s := 1;
    e := l + 1;
    res := 0;
    while s <= e do
    begin
        mi := (s+e) div 2;
        if check(mi) then
        begin
            res := mi;
            s := mi + 1;
        end else e := mi - 1;
    end;
    writeln(res);
end.