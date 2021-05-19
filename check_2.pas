(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 19/05/2021
 * Info: https://ad.memcvn.tk
 *)
program check_2;

uses windows {Thư viện dùng để in chữ có dấu}, math {Thư viện toán học};

var
  n: Word;
  result: boolean;

procedure isPrime(n: Word; var result: boolean);
var
  a: Word;
begin
    for a := 2 to ceil(sqrt(n)) {Làm tròn lên} do
      if n mod a = 0 then
      begin
        result := false;
        exit;
      end;
end;

begin
  SetConsoleOutputCP(CP_UTF8); {In chữ có dấu}
  write('Nhập N: ');
  readln(n);
  result := true;
  isPrime(n, result);
  if result then writeln(n, ' là số nguyên tố.')
  else writeln(n, ' không phải số nguyên tố.');
end.
