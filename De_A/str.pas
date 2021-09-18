(*
 * Project: De_A
 * Author: PTKDrake
 * Date: 17/9/2021
 * Info: https://ad.mcmevn.com
 *)

program str;

var
  f1, f2: Text;
  n, k, i, count: DWord;
  s: AnsiString;
  arr: array['A'..'Z'] of DWord;
  c, remove: Char;

begin
    assign(f1, 'str.INP');
    assign(f2, 'str.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n, k);
    readln(f1, s);
    s := upcase(s);
    for c := 'A' to 'Z' do arr[c] := 0;
    for i := 1 to Length(s) do 
    inc(arr[s[i]]);
    remove := '0';
    while k < n do
    begin
        if (remove = '0') or (arr[remove] = 0) then
        begin
            count := n;
            for c := 'A' to 'Z' do if (count > arr[c]) and (arr[c] > 0) then
            begin
                count := arr[c];
                remove := c;
            end;
        end;
        dec(arr[remove]);
        inc(k);
    end;
    k := 0;
    for c := 'A' to 'Z' do k := k + sqr(arr[c]);
    writeln(f2, k);
    close(f1);
    close(f2);
end.