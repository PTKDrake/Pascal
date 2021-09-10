(*
 * Project: De2016_2017_B_DUBI
 * Author: PTKDrake
 * Date: 10/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai1;

type ar = array of Byte;

var
  f1, f2: Text;
  s, s2: AnsiString;
  i, j: Word;
  res: string;
  temp: Char;

begin
    assign(f1, 'bai1.INP');
    assign(f2, 'bai1.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, s);
    readln(f1, s2);
    s := upcase(s);
    s2 := upcase(s2);
    res := 'KHONG';
    if length(s) = length(s2) then
    begin
        for i := 1 to length(s) - 1 do
          for j := Succ(i) to length(s) do
            begin
              if s[j] > s[i] then
              begin
                temp := s[i];
                s[i] := s[j];
                s[j] := temp;
              end;
              if s2[j] > s2[i] then
              begin
                temp := s2[i];
                s2[i] := s2[j];
                s2[j] := temp;
              end;
            end;
        if pos(s, s2) > 0 then res := 'CO';
    end;
    writeln(f2, res);
    close(f1);
    close(f2);
end.