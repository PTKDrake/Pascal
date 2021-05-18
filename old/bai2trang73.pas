{thong bao so lan xuat hien cua moi chu cai tieng Anh  trong S. ko phan biet hoa thuong}
program bai2trang73;
var
  s: string;
  count: integer;
  c: char;
  f1, f2: text;
begin
  assign(f1, 'DLvao.inp');
  reset(f1);
  assign(f2, 'DLra.out');
  rewrite(f2);
  readln(f1, s);
  s := upcase(s);
  writeln(f2, s);
  c := 'A';
  while c < 'Z' do
  begin
    count := 0;
    while pos(c, s) > 0 do
    begin
      inc(count);
      delete(s, pos(c, s), 1);
    end;
    if count > 0 then writeln(f2, 'Co ', count, ' ki tu ', c);
    c := char(c + 1);
  end;
  close(F1);
  close(f2);
end.