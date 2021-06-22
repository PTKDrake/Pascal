(*
 * Project: De2019_2020
 * Author: PTKDrake
 * Date: 25/5/2021
 * Info: https://ad.memcvn.net
 *)

 program BAI2;

 var
   f1, f2: Text;

 begin
  assign(f1, 'BAI2.INP');
  assign(f2, 'BAI2.OUT');
  reset(f1);
  rewrite(f1);
    
  close(f1);
  close(f2);
 end.