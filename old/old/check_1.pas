(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 19/05/2021
 * Info: https://ad.memcvn.tk
 *)
program check_1;

uses windows {Thư viện dùng để in chữ có dấu}, math {Thư viện toán học};

var
  n, i: Word;

function isPrime(n: Word): Boolean;
var
  a: word;
begin
  isPrime := true;
    for a := 2 to ceil(sqrt(n)) {Làm tròn lên} do
      if n mod a = 0 then exit(false);
end;

begin
  SetConsoleOutputCP(CP_UTF8); {In chữ có dấu}
  write('Nhập N: ');
  readln(n);
  for i := 2 to n do
    if isPrime(i) then write(i:5);
end.
