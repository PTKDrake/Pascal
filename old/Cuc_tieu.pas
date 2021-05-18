(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 24/11/2020
 *)
program Cuc_tieu;

const N = 7;

var A: array[1..N] of Integer;
i, count, min, max: Byte;
s, c: string;
begin
  for i := 1 to N do
  begin
    Write('Hay nhap phan tu thu ',i,' cua mang: ');
    ReadLn(A[i]);
  end;
  count := 0;
  min := 2;
  max := N - 1;
  s := 'Cac phan tu cuc tieu: ';
  if A[1] < A[2] then
  begin
    str(A[1], c);
    s := s + c + ' ';
    count := count + 1;
    min := 3; {Loai A[2] khi A[1] la cuc tieu}
  end;
  for i := min to max do
  begin
    if (A[i] < A[i+1]) and (A[i] < A[i-1]) then
    begin
      str(A[i], c);
      s := s + c + ' ';
      count := count + 1;
    end;
  end;
  if A[N] < A[N-1] then
  begin
    max := N - 2; {Loai A[N-1] khi A[N] la cuc tieu}
    str(A[7], c);
    s := s + c;
    count := count + 1;
  end;
  if count > 0 then
  begin
    WriteLn(s);
    WriteLn('Tong so cac phan tu cuc tieu: ', count);
  end;
end.
