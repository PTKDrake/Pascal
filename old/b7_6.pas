(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 29/01/2021
 *)
program b7_6;

var N, N2, a, S: Word;

begin
  for N := 100 to 999 do
  begin
    S := 0;
    N2 := N;
    while N2 > 0 do
    begin
      a := N2 mod 10;
      inc(S, a*a*a);
      N2 := N2 div 10;
    end;
    if S = N then WriteLn(N);
  end;
end.
