(*
 * Project: TongHop/De3
 * Author: PTKDrake
 * Date: 19/9/2021
 * Info: https://ad.mcmevn.com
 *)

program antoan;

var
  f1, f2: Text;
  m, n, i, j, p, count: Byte;
  row: array of 0..1;
  column: array of array of 0..1;

begin
    assign(f1, 'antoan.INP');
    assign(f2, 'antoan.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1, n, m);
    setlength(column, n);
    SetLength(row, m);
    for i := 1 to n do
    begin
        SetLength(column[i], m);
        for j := 1 to m do
        read(f1, column[i][j]);
    end;
    count := 0;
    for i := 2 to n - 1 do
    begin
        row := column[i];
        for j := 1 to m do if row[j] = 0 then
        begin
            if (j = 1) or (j = m) then Continue;
            if not ((row[j - 1] = 1) and (row[j + 1] = 1)) then Continue;
            row := column[i - 1];
            if not ((row[j - 1] = 1) and (row[j] = 1) and (row[j + 1] = 1)) then Continue;
            row := column[i + 1];
            if not ((row[j - 1] = 1) and (row[j] = 1) and (row[j + 1] = 1)) then Continue;
            writeln(f2, i, ' ', j);
            inc(count);
        end;
    end;
    if count = 0 then writeln(f2, -1);
    close(f1);
    close(f2);
end.