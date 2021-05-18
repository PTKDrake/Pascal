(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 03/12/2020
 *)
program BAI2;

procedure cut_space(var input, new_str: string);
begin
  while input[1] = ' ' do
  begin
    new_str := new_str + ' ';
    Delete(input, 1, 1);
  end;
end;

procedure cut(pos, length: Byte; var input, newstr: string);
begin
  newstr := Copy(input, pos, length);
  Delete(input, pos, length);
end;

var
  inp, outp: Text;
  line, word, new_str: string;
  count, t: Byte;

begin
  Assign(inp, 'BAI2.INP');
  Assign(outp, 'BAI2.OUT');
  reset(inp);
  ReadLn(inp, line);
  Close(inp);
  count := 0;
  new_str := '';
  while Length(line) > 0 do
  begin
    inc(count);
    cut_space(line, new_str);
    cut(1, pos(' ', line) - 1, line, word);
    t := round(Length(word) / 2);
    new_str := new_str + copy(word, t + 1, Length(word) - t + 1) + copy(word, 1, t);
  end;
  Rewrite(outp);
  WriteLn(outp, count);
  WriteLn(outp, new_str);
  Close(outp);
end.
