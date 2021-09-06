(*
 * Project: De2015_2016_A
 * Author: PTKDrake
 * Date: 6/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai2_other;

var
  f1, f2: Text;
  arr, arr2: array[1..100000] of LongWord;
  count, c, i, j, k: LongWord;
  not_exists: Boolean;

begin
    assign(f1, 'bai2_other.INP');
    assign(f2, 'bai2_other.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, count);
    c := 0;
    for i := 1 to count do
    begin
        not_exists := True;
        readln(f1, k);
        for j := 1 to c do 
        if arr2[j] = k then
        begin
          inc(arr[j]);
          not_exists := False;
        end;
        if not_exists then
        begin
            inc(c);
            arr2[c] := k;
            arr[c] := 1;
        end;
    end;
    k := 0;
    for i := 1 to c do
    if arr[i] > k then k := arr[i];
    for i := 1 to c do
    if arr[i] = k then
    begin
        writeln(f2, arr2[i]);
    end;
    close(f1);
    close(f2);
end.