(*
 * Project: Them
 * Author: PTKDrake
 * Date: 6/9/2021
 * Info: https://ad.mcmevn.com
 *)

program solon;

var
  f1, f2: Text;
  s1, s2: String;
  i, a, b: Byte;
  over10: Boolean;

begin
    assign(f1, 'solon.INP');
    assign(f2, 'solon.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, s1);
    readln(f1, s2);
    over10 := False;
    for i := length(s1) downto 1 do
    begin
        if length(s2) > 0 then
        begin
            a := Ord(s1[i]) - 48;
            b := Ord(s2[Length(s2)]) - 48;
            delete(s2, length(s2), 1);
            a := a + b;
            if over10 then inc(a);
            s1[i] := chr(a mod 10 + 48);
            a := a div 10;
            if a > 0 then over10 := True
            else over10 := False;
            if(i = 1) AND (length(s2) > 0) then s1 := s2 + s1;
        end;
    end;
    writeln(f2, s1);
    close(f1);
    close(f2);
end.