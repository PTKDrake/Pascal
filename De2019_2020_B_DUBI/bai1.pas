(*
 * Project: De2019_2020_B_DUBI
 * Author: PTKDrake
 * Date: 10/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai1;

var
  f1, f2: Text;
  s, s2, s3: String;
  c: Char;

begin
    assign(f1, 'bai1.INP');
    assign(f2, 'bai1.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, s);
    readln(f1, s2);
    s := upcase(s);
    s2 := upcase(s2);
    s3 := '';
    for c := 'A' to 'Z' do if (pos(c, s) > 0) and (pos(c, s2) > 0) then s3 := s3+c;
    writeln(f2, s3);
    close(f1);
    close(f2);
end.