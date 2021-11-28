(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 11/10/2021
 * Info: https://ad.memcvn.net
 *)

program arr03;

var n,i,k,a,min:DWord;
s,s2:String;

procedure toStr(num: DWord; var st: String);
begin
    st := '';
    while num > 0 do
    begin
        st := chr(num mod 10 + 48) + st;
        num := num div 10;
    end;
end;

begin
    readln(n,k);
    s := '';
    min := 0;
    for i := 1 to n do
    begin
        read(a);
        if a > k then
        begin
            toStr(i, s2);
            if (min = 0) or (a < min) then
            begin
                min := a;
                s := s2;
            end else if a = min then
            s := s + ' ' + s2;
        end;
    end;
    writeln(min);
    WriteLn(s);
end.