(*
 * Project: Them
 * Author: PTKDrake
 * Date: 8/1/2022
 * Info: https://ad.mcmevn.com
 *)

program syntax;

type st = record
    s: Byte;
    l: Byte;
end;
arr_t = array[1..255] of st;

var
    f1, f2: Text;
    s: string;
    i,c: Byte;
    arr: arr_t;
    max: st;
    change: Boolean;

procedure checkC();
var t: Byte;
a: arr_t;
begin
    i := 1;
    t := 0;
    change := False;
    while i <= c do begin
        inc(t);
        if (c > 1) and (arr[i].s > 1) then
        if (arr[i].s + arr[i].l = arr[i+1].s) and (s[arr[i].s - 1] = 'C') then
        begin
            a[t].s := arr[i].s - 1;
            a[t].l := arr[i].l + arr[i+1].l + 1;
            i := i + 2;
            change := True;
            Continue;
        end;
        a[t] := arr[i];
        inc(i);
    end;
    if change then 
    begin
        c := t;
        arr := a;
    end;
end;

procedure checkN();
var t: Byte;
a: arr_t;
begin
    i := 1;
    t := 0;
    change := False;
    while i <= c do begin
        inc(t);
        if arr[i].s > 1 then
        if s[arr[i].s - 1] = 'N' then begin
            a[t].s := arr[i].s - 1;
            a[t].l := arr[i].l + 1;
            change := True;
            inc(i);
            Continue;
        end;
        a[t] := arr[i];
        inc(i);
    end;
    if change then
    begin
        c := t;
        arr := a;
    end;
end;

procedure checkGroup();
begin
    checkC();
    if change then 
    begin
        checkGroup();
        exit;
    end;
    checkN();
    if change then 
    begin
        checkGroup();
        exit;
    end;
end;

procedure check();
begin
    c := 0;
    i := 1;
    while i <= length(s) do
    begin
        if (s[i] = 'p') or (s[i] = 'q') then
        begin
            inc(c);
            arr[c].s := i;
            arr[c].l := 1;
        end;
        inc(i);
    end;
end;

begin
    assign(f1, 'syntax.INP');
    assign(f2, 'syntax.OUT');
    reset(f1);
    rewrite(f2);
    while not eof(f1) do
    begin
        readln(f1, s);
        check();
        checkGroup();
        max.s := 0;
        max.l := 0;
        for i := 1 to c do 
        begin
            if arr[i].l > max.l then
            begin
                max.s := arr[i].s;
                max.l := arr[i].l;
            end;
        end;
        writeln(f2, max.l, ' ', max.s);
    end;
    close(f1);
    close(f2);
end.