(*
 * Project: TongHop/De2
 * Author: PTKDrake
 * Date: 19/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bl1;

var
  f1, f2: Text;
  n: Word;
  count: QWord;
  num: AnsiString;

function add(n1, n2: AnsiString): AnsiString;
var sum: Byte;
mem: Boolean;
begin
    add := '';
    mem := False;
    while (length(n2) > 0) and (length(n1) > 0) do
    begin
        sum := ord(n1[length(n1)]) + ord(n2[length(n2)]) - ord('0') * 2;
        if mem then inc(sum);
        add := chr((sum mod 10) + ord('0')) + add;
        if sum div 10 > 0 then mem := True
        else mem := False;
        delete(n1, Length(n1), 1);
        delete(n2, Length(n2), 1);
    end;
    if mem then add := '1' + add;
    add := n1 + n2 + add;
end;

begin
    assign(f1, 'bl1.INP');
    assign(f2, 'bl1.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n);
    count := 0;
    num := '11';
    while length(num) < n do
    begin
        inc(count);
        num := add(num, '11');
    end;
    writeln(f2, count);
    close(f1);
    close(f2);
end.