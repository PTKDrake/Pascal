(*
 * Project: TongHop/De3
 * Author: PTKDrake
 * Date: 19/9/2021
 * Info: https://ad.mcmevn.com
 *)

program xau;

var
  f1, f2: Text;
  s, s2: AnsiString;
  i, count: DWord;

begin
    assign(f1, 'xau.INP');
    assign(f2, 'xau.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, s);
    readln(f1, s2);
    s := upcase(s);
    s2 := upcase(s2);
    count := 0;
    for i := 1 to length(s2) do
    if s2[i] = s[1] then
        if copy(s2, i, length(s)) = s then inc(count);
    writeln(f2, count);
    close(f1);
    close(f2);
end.