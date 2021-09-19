(*
 * Project: TongHop/De1
 * Author: PTKDrake
 * Date: 19/9/2021
 * Info: https://ad.mcmevn.com
 *)

program son;

var
  f1, f2: Text;

begin
    assign(f1, 'son.INP');
    assign(f2, 'son.OUT');
    reset(f1);
    rewrite(f2);

    close(f1);
    close(f2);
end.