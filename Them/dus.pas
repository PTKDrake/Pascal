(*
 * Project: Them
 * Author: PTKDrake
 * Date: 12/11/2021
 * Info: https://ad.memcvn.net
 *)

program dus;

Uses DateUtils, sysutils;

var n,i: Word;
a: DWord;
fi,fo: Text;
time:TDateTime;

function du(num: DWord): Word;
var j, t: DWord;
begin
    du := 0;
    for j := 1 to trunc(sqrt(num)) do
    if num mod j = 0 then
    begin
        if num / j = j then inc(du)
        else du := du + 2;
    end;
end;

begin
    time:=Now;
    assign(fi, 'dus.inp');
    assign(fo, 'dus.out');
    reset(fi);
    rewrite(fo);
    readln(fi, n);
    for i := 1 to n do
    begin
        read(fi, a);
        writeln(fo, du(a));
    end;    
    close(fi);
    close(fo);
    writeln(MilliSecondsBetween(time, Now));
end.