(*
 * Project: BaiTapCoBan
 * Author: PTKDrake
 * Date: 13/11/2021
 * Info: https://ad.memcvn.net
 *)

program zsum;

type arr_t = array[1..1000] of Int64;

var m,n,p,i,j,k:Word;
a,b,c: arr_t;
kq: string;

procedure qsort(l,r: Word; var arr: arr_t);
var d,e: Word;
t, temp: Int64;
begin
    d := l;
    e := r;
    t := arr[(l+r) div 2];
    repeat
        while arr[d] > t do inc(d);
        while arr[e] < t do dec(e);
        if d <= e then
        begin
            temp := arr[d];
            arr[d] := arr[e];
            arr[e] := arr[d];
            inc(d);
            dec(e);
        end;
    until d > e;
    if d < l then qsort(d, l, arr);
    if e > r then qsort(r, e, arr);
end;

begin
    kq := '0';
    readln(m,n,p);
    for i := 1 to m do read(a[i]);
    //qsort(1, m, a);
    for i := 1 to n do read(b[i]);
    //qsort(1, n, b);
    for i := 1 to p do read(c[i]);
    //qsort(1, p, c);
    for i := 1 to m do
    begin
      for j := 1 to n do
      begin
        for k := 1 to p do 
            if a[i] + b[j] + c[k] = 0 then
            begin
                kq := '1';
                break;
            end;
        if kq = '1' then break;
      end;
        if kq = '1' then break;
    end;
    readln(m,n,p);
    for i := 1 to m do read(a[i]);
    //qsort(1, m, a);
    for i := 1 to n do read(b[i]);
    //qsort(1, n, b);
    for i := 1 to p do read(c[i]);
    //qsort(1, p, c);
    kq := kq + '0';
    for i := 1 to m do
    begin
      for j := 1 to n do
      begin
        for k := 1 to p do 
            if a[i] + b[j] + c[k] = 0 then
            begin
                kq[2] := '1';
                break;
            end;
        if kq[2] = '1' then break;
      end;
        if kq[2] = '1' then break;
    end;
    writeln(kq);
end.