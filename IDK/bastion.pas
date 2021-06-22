(*
 * Project: IDK
 * Author: PTKDrake
 * Date: 22/6/2021
 * Info: https://ad.memcvn.net
 *)

program bastion;

var
  f1, f2: Text;
  st, st2, st3: string;
  i, j: byte;
  count: integer;

begin
    assign(f1, 'bastion.INP');
    assign(f2, 'bastion.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, st);
    st2 := ' ';
    count := 0;
    for i := 1 to length(st) - 1 do
    begin
        if pos(' ' + st3 + ' ', st2) = 0 then
        begin
            inc(count);
        end;
        for j := i + 1 to length(st) do
        begin
            //st3 := copy(st, i, j - i + 1);
            if pos(' ' + st3 + ' ', st2) = 0 then
            begin
                {writeln(st3, i:2, '-', j);
                st2 := st2 + st3 + ' ';}
                inc(count);
            end;
        end;
    end;
    writeln(count);
    writeln(f2, count);
    close(f1);
    close(f2);
end.