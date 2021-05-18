(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 24/11/2020
 *)
program KT_so;
var n, i, s: Integer;
begin
  write('Hay nhap so nguyen: ');
  readln(n);
  if n = 1 then WriteLn(n, ' la so hoan hao.')
    else begin
    s := 0 ;
    for i := round(n / 2) downto 1 do
    begin
      if n mod i = 0 then s := s + i;
    end;
    if s = n then WriteLn(n, ' la so hoan hao.')
    else WriteLn(n, ' khong phai so hoan hao.');
  end;
end.
