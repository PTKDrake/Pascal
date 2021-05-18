(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 02/04/2021
 * Info: https://ad.memcvn.tk
 *)
program ok;

uses windows;
var
  s: string;
  count: integer;
  c: char;
  f1, f2: text;

begin
  SetConsoleOutputCP(CP_UTF8);
  assign(f1, 'DLvao.inp');
  reset(f1);
  assign(f2, 'DLra.out');
  rewrite(f2);
  readln(f1, s);
  s := upcase(s);
  writeln(f2, s);
  c := 'A';
  while c < 'Z' do
  begin
    count := 0;
    writeln(c);
    while pos(c, s) > 0 do
    begin
      inc(count);
      delete(s, pos(c, s), 1);
    end;
    if count > 0 then writeln(f2, 'Co ', count, ' ki tu ', c);
    c := chr(ord(c) + 1);
  end;
  close(F1);
  close(f2);
end.
