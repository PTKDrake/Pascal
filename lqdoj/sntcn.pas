(*
 * Project: lqdoj
 * Author: PTKDrake
 * Date: 11/10/2021
 * Info: https://ad.memcvn.net
 *)

program sntcn;

var a,b,c,j,count,d: DWord;
q,i:Word;

function gcd(n1,n2: DWord): DWord;
begin
    if n2 = 0 then exit(n1);
    exit(gcd(n2, n1 mod n2));
end;

begin
    readln(q);
    for i := 1 to q do
    begin
        readln(a,b,c);
        j := a + 1;
        count := 0;
        while count < c do
        begin
            while (j = b) or (gcd(j, b) <> 1) do inc(j);
            d := j;
            inc(count);
            inc(j);
        end;
        writeln(d);
    end;
end.