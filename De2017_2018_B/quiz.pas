(*
 * Project: De2017_2018_B
 * Author: PTKDrake
 * Date: 8/9/2021
 * Info: https://ad.mcmevn.com
 *)

program quiz;

var
  f1, f2: Text;
  s, s2: string;
  i, count: Word;

begin
    assign(f1, 'quiz.INP');
    assign(f2, 'quiz.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, s);
    readln(f1, s2);
    for i := 1 to length(s2) do
        if s[i] = s2[i] then inc(count);
    writeln(f2, count);
    close(f1);
    close(f2);
end.