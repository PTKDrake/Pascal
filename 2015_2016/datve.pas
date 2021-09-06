(*
 * Project: 2015_2016
 * Author: PTKDrake
 * Date: 13/7/2021
 * Info: https://ad.memcvn.net
 *)

program datve;

var
  f1, f2: Text;

begin
    assign(f1, 'datve.INP');
    assign(f2, 'datve.OUT');
    reset(f1);
    rewrite(f2);

    close(f1);
    close(f2);
end.