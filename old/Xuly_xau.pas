(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 25/11/2020
 *)
program Xuly_xau;

function remove_space(input: string): string;
var
  p: Byte;
begin
  while input[1] = ' ' do Delete(input, 1, 1);
  p := Length(input);
  while input[p] = ' ' do
  begin
    Delete(input, p, 1);
    p := Length(input);
  end;
  p := Pos('  ', input);
  while p > 0 do
  begin
    Delete(input, p, 1);
    p := Pos('  ', input);
  end;
  remove_space := input;
end;
  
function sort_string_int2(input: string): string;
var
  ind: array[1..255] of Byte;
  i, j: Byte;
  t: Char;
  num: string;
begin
  num := '';
  j := 1;
  for i := 1 to Length(input) do
  begin
    for t := '0' to '9' do if input[i] = t then
    begin
      ind[j] := i;
      num := num + t;
      j := j + 1;
    end;
  end;
  for i := 1 to Length(num) - 1 do
    for j := i + 1 to Length(num) do
      if num[i] < num[j] then
      begin
        t := num[i];
        num[i] := num[j];
        num[j] := t;
      end;
  for i := 1 to Length(num) do
  begin
    j := ind[i];
    Delete(input, j, 1);
    Insert(num[i], input, j);
  end;
  sort_string_int2 := input;
end;

function sort_string_int(input: string): string;
var
  number, ind: array[1..255] of Byte;
  i, j, t, count: Byte;
  c: string;
begin
  count := 0;
  for i := 1 to Length(input) do
  begin
    Val(input[i], t, j);
    if not (j <> 0) then
    begin
      count := count + 1;
      number[count] := t;
      ind[count] := i;
    end;
  end;
  for i := 1 to count - 1 do
    for j := i + 1 to count do
      if number[i] < number[j] then
      begin
        t := number[i];
        number[i] := number[j];
        number[j] := t;
      end;
  for i := 1 to count do
  begin
    Str(number[i], c);
    t := ind[i];
    Delete(input, t, 1);
    Insert(c, input, t);
  end;
  sort_string_int := input;
end;

var
  s: string;

begin
  Write('Hay nhap xau can xu ly: ');
  ReadLn(s);
  WriteLn('Xau sau khi xu ly: ', sort_string_int2(remove_space(s)));

end.
