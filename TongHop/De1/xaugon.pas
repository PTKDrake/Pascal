(*
 * Project: TongHop/De1
 * Author: PTKDrake
 * Date: 18/9/2021
 * Info: https://ad.mcmevn.com
 *)

program xaugon;

var
  f1, f2: Text;
  ss: String;
  count, i: Byte;

function getLen(st: String): Byte;
var l: Byte;
begin
    l := 0;
    st := upcase(st);
    while length(st) > 0 do
    begin
        if (st[1] >= 'A') and (st[1] <= 'Z') then
        begin
            if (st[2] >= '0') and (st[2] <= '9') and (length(st) >= 2) then
            begin
                l := l + ord(st[2]) - ord('0');
                delete(st, 1, 2);
            end
            else
            begin
                inc(l);
                delete(st, 1, 1);
            end;
        end
        else
        if st[1] = '(' then
        begin
            l := l + getLen(copy(st, 2, pos(')', st) - 2)) * (ord(st[pos(')', st) + 1]) - ord('0'));
            delete(st, 1, pos(')', st) + 1);
        end;
    end;
    exit(l);
end;

begin
    assign(f1, 'xaugon.INP');
    assign(f2, 'xaugon.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, count);
    for i := 1 to count do
    begin
        readln(f1, ss);
        writeln(f2, getLen(ss));
    end;
    close(f1);
    close(f2);
end.