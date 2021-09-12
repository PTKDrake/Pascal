(*
 * Project: De2019_2020
 * Author: PTKDrake
 * Date: 24/5/2021
 * Info: https://ad.mcmevn.com
 *)

program BAI1;

uses math;

var
   f1, f2: Text;
   st: String;
   i, n: Word;

function reverse(st: string): string;
var i: byte;
begin
    reverse := '';
    for i := length(st) downto 1 do reverse := reverse + st[i];
end;

begin
    assign(f1, 'BAI1.INP');
    assign(f2, 'BAI1.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    for i := 1 to n do
    begin
    readln(f1, st);
    if st = reverse(st) then writeln(f2, 'CO')
    else writeln(f2, 'KHONG');
    end;
    close(f1);
    close(f2);
end.