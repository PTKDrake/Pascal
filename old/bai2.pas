(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 11/11/2020
 *)
program bai2;

var N, i: Integer;

begin
  while True do
  begin
    write('Hay nhap so nguyen can kiem tra: '); ReadLn(N);
    if N > 3 then
    begin
      for i := round(sqrt(N)) downto 2 do
      begin
        if N mod i = 0 then
        begin
          Writeln(N,' khong phai so nguyen to.');
          break;
        end
        else if i = 2 then writeln(N,' la so nguyen to.');
      end;
    end
    else writeln(N,' la so nguyen to.');
  end;
end.
