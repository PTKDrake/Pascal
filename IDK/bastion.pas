(*
 * Project: IDK
 * Author: PTKDrake
 * Date: 22/6/2021
 * Info: https://ad.memcvn.net
 *)

program bastion;

type astr = array [0..1000] of string;

var
  f1, f2: Text;
  st: string;
  ast: astr;
  i, j, max, count: word;

procedure sort_str(var ast: astr);
var i, j: word;
    temp: string;
begin
  for i := 0 to max - 1 do
    for j := i + 1 to max do
        begin
            if ast[i] > ast[j] then
            begin
              temp := ast[i];
              ast[i] := ast[j];
              ast[j] := temp;
            end;
        end;
end;

begin
    assign(f1, 'bastion.INP');
    assign(f2, 'bastion.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, st);
    max := 0;
    for i := 1 to length(st) - 1 do
    begin
        for j := i to length(st) do
        begin
            ast[max] := copy(st, i, j - i + 1);
            inc(max);
        end;
    end;
    sort_str(ast);
    count := 0;
    for i := 0 to max - 1 do
        if ast[i] <> ast[i + 1] then
        begin
          writeln(ast[i]);
          inc(count);
        end;
    writeln(count);
    writeln(f2, count);
    close(f1);
    close(f2);
end.