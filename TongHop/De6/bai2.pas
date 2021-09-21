(*
 * Project: TongHop/De6
 * Author: PTKDrake
 * Date: 20/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai2;

var
  f1, f2: Text;
  n, c, i, j, count, count2, pre: Word;
  arr, arr2, arr3: array of DWord;

begin
    assign(f1, 'bai2.INP');
    assign(f2, 'bai2.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n, c);
    SetLength(arr, n);
    SetLength(arr2, n);
    SetLength(arr3, n);
    for i := 1 to n do read(f1, arr[i]);
    count := 0;
    count2 := 0;
    for i := 1 to n do
    begin
        count2 := 1;
        pre := arr[i];
        arr3[count2] := pre;
        for j := i + 1 to n do
        if arr[j] - pre = c then
        begin
            pre := arr[j];
            inc(count2);
            arr3[count2] := pre;
        end;
        if count < count2 then
        begin
            for j := 1 to count2 do arr2[j] := arr3[j];
            count := count2;
        end;
    end;
    writeln(f2, count);
    for i := 1 to count do
    begin
        write(f2, arr2[i]);
        if i < count then write(f2, ' ');
    end;
    close(f1);
    close(f2);
end.