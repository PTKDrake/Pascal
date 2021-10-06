(*
 * Project: De2007_2008
 * Author: PTKDrake
 * Date: 30/9/2021
 * Info: https://ad.mcmevn.com
 *)

program tinhdiem;

var
  f1, f2: Text;
  s: AnsiString;
  i: Word;
  mark, pre: Real;

begin
    assign(f1, 'tinhdiem.INP');
    assign(f2, 'tinhdiem.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, s);
    mark := 0;
    pre := 0.5;
    for i := 1 to length(s) do
    begin
        if s[i] = 'S' then pre := 0.5
        else begin
            pre := pre + 0.5;
            mark := mark + pre;
        end;
    end;
    writeln(f2, mark:0:1);
    close(f1);
    close(f2);
end.