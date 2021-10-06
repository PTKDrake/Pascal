(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 6/10/2021
 * Info: https://ad.memcvn.net
 *)

program hpt;

var n, i: 1..100;
a,b,c,d,e,f,j: Word;
dd, dx, dy: Int64;
y: Real;

begin
    readln(n);
    (*
    ax+cy=e
    bx+dy=f
    *)
    for i := 1 to n do
    begin
        readln(a,b,c,d,e,f);
        dd := a*d - b*c;
        dx := e*d - f*c;
        dy := e*b - f*a;
        if dd = 0 then
        begin
            if (dx = 0) and (dy = 0) then
            begin
                j := 1;
                y := (e - a) / c;
                while (y <= 0) or (trunc(y) <> y) do
                begin
                    inc(j);
                    y := (e - a * j) / c;
                end;
                writeln(j, ' ', y:0:0);
            end else writeln('?');
        end
        else if (dx <> 0) and (dy <> 0) then
        begin
            if (dx / dd > 0) and (dy / dd > 0) then
            begin
                dd := abs(dd);
                dx := abs(dx);
                dy := abs(dy);
                if (dx mod dd = 0) and (dy mod dd = 0) then writeln(dx div dd, ' ', dy div dd)
                else writeln('?');
            end else writeln('?');
        end else writeln('?');
    end;
end.