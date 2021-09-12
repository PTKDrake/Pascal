(*
 * Project: De2019_2020_B_DUBI
 * Author: PTKDrake
 * Date: 12/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai3;

var
  f1, f2: Text;
  count: LongWord;
  s: AnsiString;
  c: Char;

begin
    assign(f1, 'bai3.INP');
    assign(f2, 'bai3.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, count);
    readln(f1, s);
    if (pos('0', s) > 0) and (pos('0', s) - 1 <= count) then
    begin
        count := count - (pos('0', s) - 1);
        delete(s, 1, pos('0', s) - 1);
    end;
    if count > 0 then
    for c := '9' downto '0' do
    if pos(c, s) > 0 then
    begin
        delete(s, pos(c, s), 1);
        dec(count);
        if count = 0 then break;
    end;
    while s[1] = '0' do delete(s, 1, 1);
    writeln(f2, s);
    close(f1);
    close(f2);
end.