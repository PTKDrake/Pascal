(*
 * Project: D2015_2016
 * Author: PTKDrake
 * Date: 18/1/2022
 * Info: https://ad.mcmevn.com
 *)

program bai1;

var
  f1, f2: Text;
  s: string;
  i,st,ed,mst,med: byte;

function reverseString(s: string): string;
var
  i: byte;
  s1: string;
begin
    s1 := '';
    for i := length(s) downto 1 do
        s1 := s1 + s[i];
    reverseString := s1;
end;


procedure checkSymmetry(s: string; p: byte; odd: boolean; var st,ed: byte);
var t: byte;
begin
    t := 1;
    if odd then
    begin
        while (copy(s, p - t - 1, t + 1) = reverseString(copy(s, p + 1, t + 1))) and (p - t > 1) and (p + t < Length(s))  do
            inc(t);
        ed := p + t;
    end
    else
    begin
        while (copy(s, p - t - 1, t + 1) = reverseString(copy(s, p, t + 1))) and (p - t > 1) and (p - 1 + t < Length(s))  do
            inc(t);
        ed := p + t - 1;
    end;
    st := p - t;
end;

begin
    assign(f1, 'bai1.INP');
    assign(f2, 'bai1.OUT');
    reset(f1);
    rewrite(f2);
    mst := 0;
    med := 0;
    readln(f1, s);
    for i := 1 to length(s) - 1 do
    begin
        st := 0;
        ed := 0;
        if s[i-1] = s[i+1] then checkSymmetry(s, i, true, st, ed)
        else if s[i-1] = s[i] then checkSymmetry(s, i, false, st, ed);
        if med - mst + 1 < ed - st + 1 then begin mst := st; med := ed; end;
    end;
    if mst <> 0 then begin
        writeln(f2, 'CO');
        writeln(f2, med - mst + 1, ' ', mst, ' ', med, ' ');
    end else WriteLn(f2, 'KHONG');
    close(f1);
    close(f2);
end.