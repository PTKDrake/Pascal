(*
 * Project: De2017_2018_B
 * Author: PTKDrake
 * Date: 8/9/2021
 * Info: https://ad.mcmevn.com
 *)

program summax;

var
  f1, f2: Text;
  n, i, j: LongWord;
  sum, max: LongInt;
  arr: array [1..1000000] of Integer;

begin
    assign(f1, 'summax.INP');
    assign(f2, 'summax.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    for i := 1 to n do read(f1, arr[i]);
    max := 0;
    for i := 1 to n - 1 do
    begin
        sum := arr[i];
        if sum > max then max := sum;
        for j := i + 1 to n do
        begin
            sum := sum + arr[j];
            if sum > max then max := sum;
        end;
    end;
    writeln(f2, max);
    close(f1);
    close(f2);
end.