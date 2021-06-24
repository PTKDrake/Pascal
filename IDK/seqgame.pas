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

function getmin(a: ai): integer;
var t: word;
g: integer;
begin
    g := a[0];
    for t := 1 to max do
    if g > a[t] then g := a[t];
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
    writeln(f2, getmin(a1) + getmin(a2));
    writeln(f2, abs(getmin(a1) + getmin(a2)));
    close(f1);
    close(f2);
end.