(*
 * Project: De2019_2020_B
 * Author: PTKDrake
 * Date: 13/9/2021
 * Info: https://ad.mcmevn.com
 *)

program bai3;

var
  f1, f2: Text;

begin
    assign(f1, 'bai3.INP');
    assign(f2, 'bai3.OUT');
    reset(f1);
    rewrite(f2);
    
    close(f1);
    close(f2);
end.