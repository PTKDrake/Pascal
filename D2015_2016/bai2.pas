(*
 * Project: D2015_2016
 * Author: PTKDrake
 * Date: 18/1/2022
 * Info: https://ad.mcmevn.com
 *)

program bai2;

var
  f1, f2: Text;
  n,i,t: byte;
  a: word;
  arr: array[1..4] of word;//a <= 10^4

function getNumberLength(n: word): byte;
begin
  if n < 10 then
    getNumberLength := 1
  else
    getNumberLength := 1 + getNumberLength(n div 10);
end;

function squareRoot(num: word; n: byte): word;
begin
    squareRoot := num;
    while n > 1 do
    begin
        squareRoot := squareRoot * num;
        dec(n);
    end;
end;

procedure buildPerfectNumberArray();
var
  i: byte;
begin
    for i := 1 to 4 do
    begin
        arr[i] := squareRoot(2, i) * (squareRoot(2, i + 1) - 1);
    end;
end;

begin
    assign(f1, 'bai2.INP');
    assign(f2, 'bai2.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    buildPerfectNumberArray();
    for i := 1 to n do
    begin
        read(f1, a);
        for t := 1 to 4 do
        begin
            if a = arr[t] then
            begin
                writeln(f2, a);
                break;
            end;
        end;
    end;
    close(f1);
    close(f2);
end.