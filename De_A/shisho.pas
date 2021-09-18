(*
 * Project: De_A
 * Author: PTKDrake
 * Date: 16/9/2021
 * Info: https://ad.mcmevn.com
 *)

program shisho;

var
  f1, f2: Text;
  n, i, count: Byte;
  a: DWord;

function reverse(num: DWord): DWord;
var temp: DWord;
begin
    reverse := 0;
    temp := 1;
    while temp * num < 1000 do temp := temp * 10;
    while num > 0 do
    begin
        reverse := reverse * 10 + num mod 10;
        num := num div 10;
    end;
    reverse := reverse * temp;
end;

function isPrime(num: DWord): Boolean;
var t: DWord;
begin
    if num <= 3 then exit(True);
    for t := 2 to trunc(sqrt(num)) do if num mod t = 0 then exit(False);
    exit(True);
end;

begin
    assign(f1, 'shisho.INP');
    assign(f2, 'shisho.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    count := 0;
    for i := 1 to n do
    begin
        read(f1, a);
        if isPrime(reverse(a)) then inc(count);
    end;
    writeln(f2, count);
    close(f1);
    close(f2);
end.