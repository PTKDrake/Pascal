(*
 * Project: De2021_2022_A_QuangBinh
 * Author: PTKDrake
 * Date: 21/9/2021
 * Info: https://ad.mcmevn.com
 *)

program vmax;

var
  f1, f2: Text;
  n, t, i, j, k: DWord;
  

begin
    assign(f1, 'vmax.INP');
    assign(f2, 'vmax.OUT');
    reset(f1);
    rewrite(f2);

    close(f1);
    close(f2);
end.