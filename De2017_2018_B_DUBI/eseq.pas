(*
 * Project: De2017_2018_B_DUBI
 * Author: PTKDrake
 * Date: 10/9/2021
 * Info: https://ad.mcmevn.com
 *)

program eseq;

var
  f1, f2: Text;
  arr: array of Word;
  n, biggest, s, e, i, j: LongWord;

begin
    assign(f1, 'eseq.INP');
    assign(f2, 'eseq.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    SetLength(arr, n);
    for i := 1 to n do read(f1, arr[i]);
    biggest := 0;
    s := 1;
    e := 1;
    for i := 1 to n - 1 do
    if arr[i] mod 2 = 0 then
        begin
            s := i;
            e := i;
            for j := i + 1 to n do
            if (arr[j] mod 2 = 0) and (arr[e] <= arr[j]) then e := j
            else break;
            if e - s + 1 > biggest then biggest := e - s + 1;
        end;
    writeln(f2, biggest);
    close(f1);
    close(f2);
end.