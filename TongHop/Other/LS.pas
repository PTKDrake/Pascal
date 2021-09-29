(*
 * Project: TongHop/Other
 * Author: PTKDrake
 * Date: 29/9/2021
 * Info: https://ad.mcmevn.com
 *)

program LS;

var
  f1, f2: Text;
  s, s2: AnsiString;
  pre, i, longest, count: DWord;

begin
    assign(f1, 'LS.INP');
    assign(f2, 'LS.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, s);
    while s[1] = ' ' do delete(s, 1, 1);
    s := s + ' ';
    s2 := '';
    i := 0;
    pre := 1;
    longest := 0;
    count := 0;
    repeat
        inc(i);
        while (s[i] = ' ') and (s[i + 1] = ' ') do delete(s, i, 1);
        if (s[i] = ' ') and (i - pre > 0) then
        begin
            if longest < i - pre then
            begin
                longest := i - pre;
                s2 := copy(s, pre, longest);
                count := 1;
            end
            else if longest = i - pre then
            begin
                s2 := s2 + copy(s, pre, longest);
                inc(count);
            end;
            pre := i + 1;
        end;
    until i = length(s);
    for i := 1 to count do writeln(f2, copy(s2, (i - 1) * longest + 1, longest));
    writeln(f2, longest);
    close(f1);
    close(f2);
end.