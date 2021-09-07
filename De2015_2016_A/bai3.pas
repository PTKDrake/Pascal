(*
 * Project: De2015_2016_A
 * Author: PTKDrake
 * Date: 6/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai3;

var
  f1, f2: Text;
  count, max, sum, i, j: LongWord;
  arr: array of LongWord;
  s, s2: string;

begin
    assign(f1, 'bai3.INP');
    assign(f2, 'bai3.OUT');
    reset(f1);
    rewrite(f2);
    read(f1, count, max);
    SetLength(arr, count);
    for i := 1 to count do read(f1, arr[i]);
    for i := 1 to count - 1 do
    begin
        str(arr[i], s);
        sum := arr[i];
        if sum < max then
        for j := i + 1 to count do
        begin
            sum := sum + arr[j];
            str(arr[j], s2);
            s := s + ' ' + s2;
            if sum > max then break;
            if frac(sqrt(sum)) = 0 then writeln(f2, s);
        end;
    end;
    close(f1);
    close(f2);
end.