(*
 * Project: IDK
 * Author: PTKDrake
 * Date: 24/6/2021
 * Info: https://ad.memcvn.net
 *)

program seqgame;

type ai = array [0..10000] of integer;

var
  f1, f2: Text;
  i, max: word;
  a1, a2: ai;

function getmin(a, a2: ai): integer;
var j, t, g, temp: word;
begin
    g := abs(a[0] + a2[0]);
    for j := 0 to max - 1 do
        for t := j + 1 to max do
        begin
            temp := abs(a[i] + a[j]);
            if temp = 0 then exit(0);
            if g > temp then g := temp;
        end;
    exit(g);
end;

begin
    assign(f1, 'seqgame.INP');
    assign(f2, 'seqgame.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, max);
    for i := 0 to max do
        begin
          read(f1, a1[i]);
        end;
    for i := 0 to max do
        begin
          read(f1, a2[i]);
        end;
    writeln(f2, getmin(a1, a2));
    close(f1);
    close(f2);
end.