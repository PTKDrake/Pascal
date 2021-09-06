(*
 * Project: Them
 * Author: PTKDrake
 * Date: 6/9/2021
 * Info: https://ad.mcmevn.com
 *)

program solon;

var
  f1, f2: Text;

begin
    assign(f1, 'solon.INP');
    assign(f2, 'solon.OUT');
    reset(f1);
    rewrite(f2);

    close(f1);
    close(f2);
end.