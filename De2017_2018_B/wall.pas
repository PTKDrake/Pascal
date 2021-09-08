(*
 * Project: De2017_2018_B
 * Author: PTKDrake
 * Date: 8/9/2021
 * Info: https://ad.mcmevn.com
 *)

program wall;

var
  f1, f2: Text;
  n, i, a, b, c, d, count: LongWord;

function GCD(a, b: LongWord): LongWord;
var
  temp: LongWord;
begin
  while b <> 0 do
  begin
    temp := b;
    b := a mod b;
    a := temp
  end;
  exit(a);
end;

begin
    assign(f1, 'wall.INP');
    assign(f2, 'wall.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    count := 0;
    d := 0;
    for i := 1 to n do
    begin
        read(f1, a, b);
        c := GCD(a, b);
        if c > 0 then
        if c > d then
        begin
            d := c;
            count := a * b div sqr(c);
        end
        else if c = d then
        count := count + a * b div sqr(c);
    end;
    writeln(f2, count);
    close(f1);
    close(f2);
end.