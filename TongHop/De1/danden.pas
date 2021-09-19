(*
 * Project: TongHop/De1
 * Author: PTKDrake
 * Date: 19/9/2021
 * Info: https://ad.mcmevn.com
 *)

program danden;

var
  f1, f2: Text;
  s: String;
  m, n, i, j, t, count: Byte;
  list: array of String;
  exist: Boolean;

begin
    assign(f1, 'danden.INP');
    assign(f2, 'danden.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, m, n);
    SetLength(list, m);
    count := 0;
    for i := 1 to m do
    begin
        readln(f1, s);
        if pos('*', s) = 0 then
        for j := 1 to n do if (s[j] = '+') then
        begin
            exist := False;
            for t := 1 to i - 1 do if pos('*', list[t]) = j then exist := True;
            if exist then Continue;
            s[j] := '*';
            inc(count);
            break;
        end;
        list[i] := s;
    end;
    writeln(f2, count);
    for i := 1 to m do writeln(f2, list[i]);
    close(f1);
    close(f2);
end.