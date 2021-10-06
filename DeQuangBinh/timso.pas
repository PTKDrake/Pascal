(*
 * Project: De2021_2022_A_QuangBinh
 * Author: PTKDrake
 * Date: 21/9/2021
 * Info: https://ad.mcmevn.com
 *)

program timso;

var
  f1, f2: Text;
  n, k, i, pre: DWord;
  arr: array of DWord;

procedure qsort(l, r: DWord; var a: array of DWord);
var s, e, q, temp: DWord;
begin
    s := l;
    e := r;
    q := a[(l + r) div 2];
    repeat 
    begin
        while a[s] < q do inc(s);
        while a[e] > q do dec(e);
        if s <= e then
        begin
            temp := a[s];
            a[s] := a[e];
            a[e] := temp;
            inc(s);
            dec(e);
        end;
    end
    until s > e;
    if l < e then qsort(l, e, a);
    if r > s then qsort(s, r, a);
end;    

begin
    assign(f1, 'timso.INP');
    assign(f2, 'timso.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n, k);
    SetLength(arr, n - k);
    for i := 1 to n - k do read(f1, arr[i]);
    qsort(1, n - k, arr);
    pre := 1;
    i := 1;
    while pre <= n do
    begin
        if pre = arr[i] then inc(i)
        else
        begin
            write(f2, pre, ' ');
        end;
        inc(pre);
    end;
    close(f1);
    close(f2);
end.