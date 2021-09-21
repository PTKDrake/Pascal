(*
 * Project: TongHop/De4
 * Author: PTKDrake
 * Date: 20/9/2021
 * Info: https://ad.mcmevn.com
 *)

program dayso;

var
  f1, f2: Text;
  i, j, n, t, max, max2: Byte;
  arr, arr2: array[-10000..10000] of Byte;
  a: integer;

begin
    assign(f1, 'dayso.INP');
    assign(f2, 'dayso.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    readln(f1);
    readln(f1, i, j);
    reset(f1);
    readln(f1);
    FillChar(arr, SizeOf(arr), 0);
    FillChar(arr2, SizeOf(arr2), 0);
    max := 0;
    max2 := 0;
    for t := 1 to n do
    begin
        read(f1, a);
        inc(arr[a]);
        if max < arr[a] then max := arr[a];
        if (t >= i) and (t <= j) then
        begin
            inc(arr2[a]);
            if max2 < arr2[a] then max2 := arr2[a];
        end;
    end;
    writeln(f2, max);
    writeln(f2, max2);
    close(f1);
    close(f2);
end.