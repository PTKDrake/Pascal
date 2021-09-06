(*
 * Project: 2015_2016
 * Author: PTKDrake
 * Date: 13/7/2021
 * Info: https://ad.mcmevn.com
 *)

program sapxau;

type st_arr = array[0..255] of string;

var
  f1, f2: Text;
  st: string;
  arr: st_arr;
  n, i, p: byte;

procedure qsort(left, right: byte; var ar: st_arr);
var i, j, t: Integer;
temp: string;
begin
    i := left;
    j := right;
    t := length(ar[(left + right) div 2]);
    repeat
        while length(ar[i]) < t do inc(i);
        while length(ar[j]) > t do dec(j);
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
    assign(f1, 'sapxau.INP');
    assign(f2, 'sapxau.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, st);
    n := 0;
    while st[1] = ' ' do delete(st, 1, 1);
    while length(st) > 0 do
    begin
        p := pos(' ', st) - 1;
        if p > 0 then
        begin
            arr[n] := copy(st, 1, p);
            delete(st, 1, p);
        end
        else
        begin
            arr[n] := copy(st, 1, Length(st) - 1);
            delete(st, 1, Length(st) - 1);
        end;
        while st[1] = ' ' do delete(st, 1, 1);
        if length(st) > 0 then inc(n);
    end;
    qsort(0, n, arr);
    for i := 0 to n do
      if i <> n then st := st + arr[i] + ' '
      else st := st + arr[i];
    writeln(f2, st);
    close(f1);
    close(f2);
end.