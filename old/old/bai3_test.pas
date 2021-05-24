(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 06/04/2021
 * Info: https://ad.memcvn.tk
 *)
program bai3_test;

Uses sysutils;

const s = 1;
e = 8;

procedure gentest(i: byte);
var
  f: Text;
  a: LongInt;
  folder: string;
begin
  Randomize;
  if i < 10 then folder := 'Test0'+chr(i+48)
    else folder := 'Test'+chr(i+48);
  if not DirectoryExists(folder) then CreateDir(folder);
  assign(f, folder+'/BAI3.INP'); rewrite(f);
  writeln(f, random(1000), ' ', 1);
  WriteLn(f, '3 5 7');
  a := Random(1000);
  WriteLn(f, round(a/2), ' ', a);
  close(f);
end;

var
  i: byte;
begin
  for i := s to e do gentest(i);
end.
