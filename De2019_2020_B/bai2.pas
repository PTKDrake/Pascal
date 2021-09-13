(*
 * Project: De2019_2020_B
 * Author: PTKDrake
 * Date: 12/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai2;

var
  f1, f2: Text;
  m, n, i, j, count, pre: LongWord;
  a, b: array of LongWord;

procedure qsort(l, r: LongWord; var arr: array of LongWord);
var i, j, t, temp: LongWord;
begin
    i := l;
    j := r;
    t := arr[(l + r) div 2];
    repeat
        while arr[i] < t do inc(i);
        while arr[j] > t do dec(j);
        if i <= j then
        begin
            temp := arr[i];
            arr[i] := arr[j];
            arr[j] := temp;
            inc(i);
            dec(j);
        end;
    until i > j;
    if l < j then qsort(l, j, arr);
    if r > i then qsort(i, r, arr);
end;

begin
    assign(f1, 'bai2.INP');
    assign(f2, 'bai2.OUT');
    reset(f1);
    rewrite(f2);
    read(f1, m, n);
    SetLength(a, m);
    SetLength(b, n);
    for i := 1 to m do read(f1, a[i]);
    for i := 1 to n do read(f1, b[i]);
    qsort(1, m, a);
    qsort(1, n, b);
    count := 0;
    pre := 1;
    for i := 1 to m do
    for j := pre to n do if a[i] > b[j] then
    begin
        pre := j + 1;
        inc(count);
        break;
    end;
    writeln(f2, count);
    close(f1);
    close(f2);
end.