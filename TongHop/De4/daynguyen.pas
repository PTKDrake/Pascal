(*
 * Project: TongHop/De4
 * Author: PTKDrake
 * Date: 20/9/2021
 * Info: https://ad.mcmevn.com
 *)

program daynguyen;

var
  f1, f2: Text;
  n, i, j, s, e, ls, le: Byte;
  arr: array of Integer;
  sum, largest: Integer;

begin
    assign(f1, 'daynguyen.INP');
    assign(f2, 'daynguyen.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    SetLength(arr, n);
    largest := 0;
    for i := 1 to n do read(f1, arr[i]);
    for i := 1 to n - 1 do
    begin
        s := i;
        e := i;
        sum := arr[i];
        if sum > largest then
        begin
            largest := sum;
            ls := s;
            le := e;
        end; 
        for j := i + 1 to n do
        begin
            sum := sum + arr[j];
            e := j;
            if sum > largest then
            begin
                largest := sum;
                ls := s;
                le := e;
            end;
        end;
    end;
    writeln(f2, ls, ' ', le);
    writeln(f2, largest);
    close(f1);
    close(f2);
end.