(*
 * Project: De2015_2016_A
 * Author: PTKDrake
 * Date: 6/9/2021
 * Info: https://ad.memcvn.net
 *)

program bai1;

var
  f1, f2: Text;
  s1, s2: String;
  i, count: Word;

begin
    assign(f1, 'bai1.INP');
    assign(f2, 'bai1.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, s1);
    readln(f1, s2);
    count := 0;
    for i := 1 to length(s2) do
    begin
      if s1[1] = s2[i] then
        if copy(s2, i, length(s1)) = s1 then inc(count);
    end;
    writeln(f2, count);
    close(f1);
    close(f2);
end.