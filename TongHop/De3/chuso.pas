(*
 * Project: TongHop/De3
 * Author: PTKDrake
 * Date: 19/9/2021
 * Info: https://ad.mcmevn.com
 *)

program chuso;

var
  f1, f2: Text;
  num: String;
  largest: char;
  i, p: Byte;
  sum: Word;

begin
    assign(f1, 'chuso.INP');
    assign(f2, 'chuso.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, num);
    sum := 0;
    largest := '0';
    for i := length(num) downto 1 do
    begin
        sum := sum + ord(num[i]) - ord('0');
        if num[i] > largest then
        begin
            largest := num[i];
            p := length(num) - i + 1;
        end;
    end;
    writeln(f2, sum);
    writeln(f2, largest);
    WriteLn(f2, p);
    close(f1);
    close(f2);
end.