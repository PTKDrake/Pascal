(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 03/04/2021
 * Info: https://ad.memcvn.tk
 *)
program t_16_1;

uses windows;

var inp, outp: Text;
st, st2: string;
s: array[1..20] of string;
i, j, max: Byte;

begin
  assign(inp, 'SAPXAU.INP');
  reset(inp);
  assign(outp, 'SAPXAU.OUT');
  rewrite(outp);
  readln(inp, st);
  st := st + ' ';
  i := 0;
  while length(st) > 0 do
  begin
    if st[1] = ' ' then delete(st, 1, 1)
    else
    begin
      inc(i);
      if pos(' ', st) = 0 then
      begin
        s[i] := st;
        st := '';
      end
      else
      begin
        s[i] := copy(st, 1, pos(' ', st));
        delete(st, 1, pos(' ', st));
      end;
    end;
  end;
  max := i;
  for i := 1 to max - 1 do
    for j := i + 1 to max do
    begin
      if length(s[i]) > length(s[j]) then
      begin
        st2 := s[i];
        s[i] := s[j];
        s[j] := st2;
      end;
    end;
  for i := 1 to max do
    st := st + s[i] + ' ';
  writeln(outp, st);
  Close(inp);
  Close(outp);
  SetConsoleOutputCP(CP_UTF8);
end.
