(*
 * Project: Them
 * Author: PTKDrake
 * Date: 8/1/2022
 * Info: https://ad.mcmevn.com
 *)

program binseq;

var
    f1, f2: Text;
    i,n,m: word;
    a: array[0..1000] of word;

begin
    assign(f1, 'binseq.INP');
    assign(f2, 'binseq.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n, m);
    a[0] := 1;
    a[1] := 1;
    for i := 2 to n do begin
        a[i] := a[i - 1] + a[i - 2];
    end;
    for i := n downto 1 do
    begin
        if m > a[i] then 
        begin
            write('1');
            m := m - a[i];
        end
        else write('0');
    end;
    close(f1);
    close(f2);
end.