(*
 * Project: De2016_2017_B_DUBI/out
 * Author: PTKDrake
 * Date: 10/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai3;

var
  f1, f2: Text;
  n, biggest, s, e, b, k, i: LongWord;

begin
    assign(f1, 'bai3.INP');
    assign(f2, 'bai3.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    SetLength(arr, n);
    biggest := 0;
    for i := 1 to n do
    begin
        read(f1, k);
        if i = 1 then
        begin
            s := 1;
            e := 1;
        end
        else if b <> k then
        begin
            s := i;
            e := i;
        end
        else e := i;
        if e - s + 1 > biggest then biggest := e - s + 1;
        b := k;
    end;
    writeln(f2, biggest);
    close(f1);
    close(f2);
end.