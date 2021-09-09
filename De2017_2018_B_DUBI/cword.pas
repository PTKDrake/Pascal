(*
 * Project: De2017_2018_B_DUBI
 * Author: PTKDrake
 * Date: 9/9/2021
 * Info: https://ad.mcmevn.com
 *)

program cword;

var
  f1, f2: Text;
  s: string;
  len, st, ed: Byte;

begin
    assign(f1, 'cword.INP');
    assign(f2, 'cword.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, s);
    upcase(s);
    s := ' ' + s + ' ';
    while pos('  ', s) > 0 do delete(s, pos('  ', s), 1);
    len := 0;
    while pos(' ', s) > 0 do
    begin
        st := Succ(pos(' ', s));
        delete(s, pos(' ', s), 1);
        ed := pos(' ', s);
        if ed - st + 1 > len then len := ed - st + 1;
    end;
    writeln(f2, len);
    close(f1);
    close(f2);
end.