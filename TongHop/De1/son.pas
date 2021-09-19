(*
 * Project: TongHop/De1
 * Author: PTKDrake
 * Date: 19/9/2021
 * Info: https://ad.mcmevn.com
 *)

program son;

type arr_t = array of Byte;

var
  f1, f2: Text;
  m, n, i: Byte;
  list: arr_t;
  temp: array of Boolean;
  count: DWord;

procedure printPaint(list: arr_t);
var t: Byte;
begin
    for t := 1 to n do
    begin
        write(f2, list[t]);
        if t <> n then write(f2, ' ');
    end; 
    writeln(f2);
    inc(count);
end;

procedure addPaint(pre: Byte);
var t: Byte;
begin
    for t := 1 to m do
    if not temp[t] then
    begin
        list[pre] := t;
        temp[t] := True;
        if pre = n then printPaint(list)
        else addPaint(succ(pre));
        temp[t] := False;
    end;
end;

begin
    assign(f1, 'son.INP');
    assign(f2, 'son.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, m, n);
    SetLength(temp, n);
    SetLength(list, n);
    for i := 1 to n do temp[i] := False;
    count := 0;
    addPaint(1);
    writeln(f2, count);
    close(f1);
    close(f2);
end.