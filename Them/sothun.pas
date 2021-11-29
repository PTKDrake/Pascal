(*
 * Project: Them
 * Author: PTKDrake
 * Date: 29/11/2021
 * Info: https://ad.memcvn.net
 *)

program sothun;

uses Math;

var n, n2, count, p: DWord;
l: Byte;

function getMin(len: Byte): DWord;
begin
    getMin := 1;
    while len > 1 do
    begin
        getMin := getMin * 10;
        dec(len);
    end;
end;

function getMax(len: Byte): DWord;
begin
    getMax := 9;
    while len > 1 do
    begin
        getMax := getMax * 10 + 9;
        dec(len);
    end;
end;

function getPos(num: DWord; p,len: Byte): Byte;
begin
    while len - p > 0 do
    begin
        num := num div 10;
        inc(p);
    end;
    exit(num mod 10);
end;

begin
    while True do
    begin
        writeln('Nhap n(0 de thoat): ');
        readln(n);
        if n = 0 then break;
        if n > 9 then
        begin
            l := 1;
            count := (getMax(l) - getMin(l) + 1) * l;
            while n - count > 0 do
            begin
                n := n - count;
                inc(l);
                count := (getMax(l) - getMin(l) + 1) * l;
            end;
            n2 := ceil(n / l) + getMax(l - 1);
            p := (n - 1) mod l + 1;
            writeln(n, ' ', n2, ' ', p, ' ', l);
            writeln(getPos(n2, p, l));
        end else writeln(n);
    end;
    //9
    //189
    //2889
    //38889
    //488889
end.