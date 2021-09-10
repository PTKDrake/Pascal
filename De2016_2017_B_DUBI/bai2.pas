(*
 * Project: De2016_2017_B_DUBI
 * Author: PTKDrake
 * Date: 10/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai2;

var
  f1, f2: Text;
  n: LongWord;


function bin2dec(s: AnsiString): LongWord;
var i, j, temp: LongWord;
begin
    bin2dec := 0;
    for i := Length(s) downto 1 do
      if s[i] = '1' then
      begin
        temp := 1;
        for j := 1 to Length(s) - i do temp := temp * 2;
        bin2dec := bin2dec + temp;
      end; 
end;

function dec2bin(a: LongWord):AnsiString;
var d: LongWord;
Begin
  dec2bin := '';
  while a > 0 do
  begin
    d := a mod 2;
    dec2bin := char(d + 48) + dec2bin;
    a := a div 2;
  end;
End;

function reverseString(s: AnsiString): AnsiString;
var i: LongWord;
begin
    reverseString := '';
    for i := length(s) downto 1 do reverseString := reverseString + s[i];
end;

begin
    assign(f1, 'bai2.INP');
    assign(f2, 'bai2.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    writeln(f2, bin2dec(reverseString(dec2bin(n))));
    close(f1);
    close(f2);
end.