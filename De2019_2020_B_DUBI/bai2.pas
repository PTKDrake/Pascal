(*
 * Project: De2019_2020_B_DUBI
 * Author: PTKDrake
 * Date: 12/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai2;

type arr_t = array of LongWord;

var
  f1, f2: Text;
  arr, arr2: arr_t;
  n, a, b, i, a_c, b_c, l, min: LongWord;

procedure qsort(left, right: LongWord; var ar, ar2: arr_t);
var i, j, t, temp: LongWord;
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
            temp := ar2[i];
            ar2[i] := ar2[j];
            ar2[j] := temp;
            inc(i);
            dec(j);
        end;
    until i > j;
    if left < j then qsort(left, j, ar, ar2);
    if right > i then qsort(i, right, ar, ar2);
end;

begin
    assign(f1, 'bai2.INP');
    assign(f2, 'bai2.OUT');
    reset(f1);
    rewrite(f2);
    read(f1, n, a, b);
    SetLength(arr, n);
    SetLength(arr2, n);
    for i := 1 to n do read(f1, arr[i], arr2[i]);
    qsort(1, n, arr, arr2);
    l := 1;
    min := 1000000001;
    a_c := 0;
    b_c := 0;
    for i := 1 to n do
    begin
        if arr2[i] = 1 then inc(a_c) else inc(b_c);
        while (a_c >= a) and (b_c >= b) do
        begin
            if arr[i] - arr[l] < min then min := arr[i] - arr[l];
            if arr2[l] = 1 then dec(a_c) else dec(b_c);
            inc(l);
        end;
    end;
    if min = 1000000001 then writeln(f2, -1)
    else writeln(f2, min);
    close(f1);
    close(f2);
end.