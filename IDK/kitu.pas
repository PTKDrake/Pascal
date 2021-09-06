(*
 * Project: IDK
 * Author: PTKDrake
 * Date: 24/6/2021
 * Info: https://ad.mcmevn.com
 *)

program kitu;
var st: string;

procedure del(t, next: byte; var st: string);
begin
    if length(st) = 1 then exit;
    if length(st) < t then
    begin
      t := t - length(st);
      del(t, next, st);
    end
    else
    begin
        delete(st, t, 1);
        t := next;
        if next = 5 then next := 6
        else next := 5;
        del(t, next, st);
    end;
end;

begin
    write('Nhap chuoi: ');
    readln(st);
    del(5, 6, st);
    writeln(st);
end.