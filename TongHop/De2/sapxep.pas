(*
 * Project: TongHop/De2
 * Author: PTKDrake
 * Date: 19/9/2021
 * Info: https://ad.mcmevn.com
 *)

program sapxep;

type arr_t = array[1..200] of String;

var
  f1, f2: Text;
  n, i: Byte;
  arr: arr_t;

procedure qsort(left, right: Word; var ar: arr_t);
var i, j, t: Byte;
temp: String;
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
    assign(f1, 'sapxep.INP');
    assign(f2, 'sapxep.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    for i := 1 to n do readln(f1, arr[i]);
    qsort(1, n, arr);
    for i := 1 to n do writeln(f2, arr[i]);
    close(f1);
    close(f2);
end.