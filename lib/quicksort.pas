(*
 * Project: 
 * Author: PTKDrake
 * Date: 24/6/2021
 * Info: https://ad.memcvn.net
 *)

program quicksort;

type arr = array [0..10000] of integer;

var f1, f2: text;
a: arr;
k, max: word;

procedure qsort(left, right: word; var ar: arr);
var i, j, t, temp: word;
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
    assign(f1, 'quicksort.INP');
    assign(f2, 'quicksort.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, max);
    for k := 0 to max do
    readln(f1, a[k]);
    qsort(0, max, a);
    for k := 0 to max do
    writeln(f2, a[k]);
    close(f1);
    close(f2);
end.