(*
 * Project: De2021_2022_A_QuangBinh
 * Author: PTKDrake
 * Date: 21/9/2021
 * Info: https://ad.mcmevn.com
 *)

program chiahet;

var
  f1, f2: Text;
  N: QWord;

begin
    assign(f1, 'chiahet.INP');
    assign(f2, 'chiahet.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, N);
    if (N mod 5 = 0) and (N mod 3 = 0) then writeln(f2, 1)
    else writeln(f2, 0);
    close(f1);
    close(f2);
end.