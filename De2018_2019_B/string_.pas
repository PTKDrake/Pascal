(*
 * Project: De2018_2019_B
 * Author: PTKDrake
 * Date: 10/9/2021
 * Info: https://ad.mcmevn.com
 *)

program string_;

var
  f1, f2: Text;
  s, s2: AnsiString;
  i, count: Word;

begin
    assign(f1, 'string_.INP');
    assign(f2, 'string_.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, s);
    readln(f1, s2);
    count := 0;
    for i := 1 to length(s) do if s[i] <> s2[i] then inc(count);
    writeln(f2, count);
    close(f1);
    close(f2);
end.