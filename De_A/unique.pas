(*
 * Project: De_A
 * Author: PTKDrake
 * Date: 16/9/2021
 * Info: https://ad.mcmevn.com
 *)

program unique;

var
  f1, f2: Text;
  n, c, i, j: Byte;
  a, num: LongInt;
  arr: array of Byte;
  arr2: array of LongInt;
  exists: Boolean;

begin
    assign(f1, 'unique.INP');
    assign(f2, 'unique.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    SetLength(arr, n);
    SetLength(arr2, n);
    c := 0;
    for i := 1 to n do
    begin
        exists := False;
        read(f1, a);
        for j := 1 to c do if arr2[j] = a then
        begin
            inc(arr[j]);
            exists := True;
            break;
        end;
        if not exists then
        begin
            inc(c);
            arr[c] := 1;
            arr2[c] := a;
        end;
    end;
    num := 0;
    for i := 1 to c do 
    if (arr[i] = 1) and (arr2[i] > num) then num := arr2[i];
    writeln(f2, num);
    close(f1);
    close(f2);
end.