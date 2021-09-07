(*
 * Project: De2016_2017_A
 * Author: PTKDrake
 * Date: 7/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai1;

var
  f1, f2: Text;
  s: string;
  i, count: Word;

begin
    assign(f1, 'bai1.INP');
    assign(f2, 'bai1.OUT');
    reset(f1);
    rewrite(f2);
    SetLength(s, 10000);
    readln(f1, s);
    s := upcase(s);
    count := 0;
    for i := 1 to length(s) do
    if (s[i] >= 'A') and (s[i] <= 'Z') then inc(count);
    writeln(f2, count);
    close(f1);
    close(f2);
end.