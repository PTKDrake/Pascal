(*
 * Project: De2016_2017_A
 * Author: PTKDrake
 * Date: 7/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai2;

var
  f1, f2: Text;
  min, max, count: LongWord;

function isPrime(num: LongWord): Boolean;
var a: LongWord;
begin
    if num <= 3 then exit(False);
    for a := 2 to round(sqrt(num)) do
        if num mod a = 0 then exit(False);
    exit(True);
end;

function reverseNumber(num: LongWord): LongWord;
var a: LongWord;
begin
    a := 0;
    while num > 0 do
    begin
        if a > 0 then a := a * 10;
        a := a + num mod 10;
        num := num div 10;
    end;
    exit(a);
end;

begin
    assign(f1, 'bai2.INP');
    assign(f2, 'bai2.OUT');
    reset(f1);
    rewrite(f2);
    read(f1, min, max);
    count := 0;
    for min := min to max do
    begin
        if isPrime(reverseNumber(min)) then inc(count);
    end;
    writeln(f2, count);
    close(f1);
    close(f2);
end.