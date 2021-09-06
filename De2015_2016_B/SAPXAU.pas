(*
 * Project: De2015_2016
 * Author: PTKDrake
 * Date: 30/5/2021
 * Info: https://ad.mcmevn.com
 *)

program SAPXAU;

uses windows;

var
  f1, f2: Text;
  st, st2: string;
  i: byte;

procedure cut(s: byte; var st, new: string);
begin
    while st[s] <> ' ' do
    begin
        new := new + st[s];
        delete(st, s, 1);
    end;
end;

begin
    SetConsoleOutputCP(CP_UTF8);
    assign(f1, 'SAPXAU.INP');
    assign(f2, 'SAPXAU.OUT');
    reset(f1);
    rewrite(f1);
    i := 1;
    while i < length(st) do
    begin

    end;
    close(f1);
    close(f2);
end.