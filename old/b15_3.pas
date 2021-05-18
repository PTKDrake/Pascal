(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 31/03/2021
 * Info: https://ad.memcvn.tk
 *)
program b15_3;

uses windows;

var
  inp, outp: Text;
  N, T, p, q, m, u, v, i, j, a, count: Word;

begin
  SetConsoleOutputCP(CP_UTF8);
  Assign(inp, 'b15_3.inp');
  Reset(inp);
  Assign(outp, 'b15_3.out');
  Rewrite(outp);
  read(inp, N, T, p, q, m);
  for i := 1 to T do
  begin
    read(inp, u, v);
    count := v - u + 1;
    if (u <= v) and (v <= N) then while u <= v do
    begin
      a := (p * u) mod m + q;
      if a > 3 then
      for j := 2 to round(sqrt(a)) do
      if a mod j = 0 then
      begin
        dec(count);
        break;
      end;
      inc(u);
    end;
    writeln(outp, count);
  end;
  Close(outp);
end.
