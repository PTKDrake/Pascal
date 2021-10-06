(*
 * Project: De2007_2008
 * Author: PTKDrake
 * Date: 30/9/2021
 * Info: https://ad.mcmevn.com
 *)

program chiado;

var
  f1, f2: Text;

begin
    assign(f1, 'chiado.INP');
    assign(f2, 'chiado.OUT');
    reset(f1);
    rewrite(f2);

    close(f1);
    close(f2);
end.