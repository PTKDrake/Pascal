(*
 * Project: Them
 * Author: PTKDrake
 * Date: 24/11/2021
 * Info: https://ad.memcvn.net
 *)

program bai3;

type arr_t = array of Byte;

var fi,fo: Text;
mi,ma: arr_t;
num: String;
k, p: Word;
c, c2: Char;

begin
    assign(fi, 'bai3.inp');
    assign(fo, 'bai3.out');
    reset(fi);
    rewrite(fo);
    readln(fi, k);
    readln(fi, num);
    while k > 0 do
    begin
        while num[1] = '0' do delete(num, 1, 1);
        for c := '0' to '9' do
        begin
            p := pos(c, num);
            if p = 1 then
            begin
                for c2 := '9' downto '1' do
                begin
                    if pos(c2, num) > 0 then
                    begin
                        delete(num, pos(c2, num), 1);
                        dec(k);
                    end;
                    if k = 0 then break;
                end;
            end
            else
            begin
                if ((p-1) <= k) and (p > 0) then
                begin
                    num := copy(num, p, length(num) - p + 1);
                    k := k - p + 1;
                    while num[1] = '0' do delete(num, 1, 1);
                end;
            end;
            if k = 0 then break;
        end;
    end;
    writeln(fo, num);
    close(fi);
    close(fo);
end.