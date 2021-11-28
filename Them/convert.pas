(*
 * Project: Them
 * Author: PTKDrake
 * Date: 27/11/2021
 * Info: https://ad.memcvn.net
 *)

program convert;

var fi, fo: Text;

function isAlphabet(c: char): Boolean;
begin
    exit(((c >= 'a') and (c <= 'z')) or ((c >= 'A') and (c <= 'Z')));
end;

function isNumber(c: char): Boolean;
begin
    exit((c >= '0') and (c <= '9'));
end;

function isBracket(c: char): Boolean;
begin
    exit((c = '(') or (c = ')'));
end;

function getType(s: string): Byte;
var i, l: byte;
begin
    getType := 0;
    l := Length(s);
    for i := 1 to Length(s) do
    if isAlphabet(s[i]) or isNumber(s[i]) or isBracket(s[i]) then begin
        if isNumber(s[i]) then getType := 1;
        dec(l);
    end;
    if l > 0 then getType := 2;
end;

function compressNB(s: string): string;
var i,j,sp,ep: byte;
begin
    i := 1;
    compressNB := '';
    while i <= Length(s) do
    begin
        sp := i;
        ep := i;
        while s[i] = s[i+1] do
        begin
            inc(ep);
            inc(i);
        end;
        if ep - sp = 0 then 
        begin
            compressNB := compressNB + s[i];
            inc(i);
        end else begin
            j := ep - sp + 1;
            while j > 0 do 
            begin
                compressNB := compressNB + s[i] + chr(ord('0') + j mod 10);
                j := j div 10;
            end;
            inc(i);
        end;
    end;
end;

function checkBrackets(s: string): Boolean;
var c: Integer;
i: byte;
begin
    c := 0;
    for i := 1 to Length(s) do
    begin
        if s[i] = '(' then inc(c);
        if s[i] = ')' then dec(c);
    end;
    exit(c = 0);
end;

function search(s: string; sp,ep: byte): byte;
var l: byte;
begin
    search := 1;
    l := ep - sp + 1;
    if not checkBrackets(copy(s, sp, l)) then exit(1);
    while (copy(s, sp, l) = copy(s, sp + l, l)) and (ep - sp > 0) do
    begin
        inc(search);
        sp := sp + l;
        ep := ep + l;
    end;
end;

function compressB(s: string): string;
var i,j,l: byte;
skip: Boolean;
begin
    compressB := '';
    i := 1;
    while i <= Length(s) do
    begin
        skip := True;
        j := i + 1;
        while (j <= Length(s)) and (Length(s) - j >= j - i) do
        begin
            l := search(s, i, j);
            if l > 1 then
            begin
                compressB := compressB + '(' + copy(s, i, j - i + 1) + ')';
                i := i + (j - i + 1) * l; 
                while l > 1 do 
                begin
                    compressB := compressB + chr(l mod 10 + ord('0'));
                    l := l div 10;
                end;
                skip := False;
                break;
            end;
            inc(j);
        end;
        if skip then
        begin
            compressB := compressB + s[i];
            inc(i);
        end; 
    end;
end;

function compress(s: string; nb: Boolean): string;
var temp: string;
begin
    if nb then s := compressNB(s);
    temp := compressB(s);
    if s = temp then exit(s);
    exit(compress(temp, False));
end;

function extractNB(s: string): string;
var i: byte;
j,times: Word;
c: char;
begin
    extractNB := '';
    i := 1;
    while i <= length(s) do
    begin
        if isNumber(s[i+1]) and not isBracket(s[i]) then
        begin
            c := s[i];
            times := 0;
            while isNumber(s[i+1]) do begin
                times := times * 10 + ord(s[i+1]) - ord('0');
                inc(i);
            end;
            for j := 1 to times do extractNB := extractNB + c;
            inc(i);
        end
        else
        begin
            extractNB := extractNB + s[i];
            inc(i);
        end;
    end;
end;

function extractB(s: string): string;
var i,skip,sp,ep: byte;
j,times: Word;
c: string;
begin
    extractB := '';
    i := 1;
    skip := 0;
    sp := 0;
    ep := 0;
    while i <= Length(s) do
    begin
        if s[i] = '(' then
        begin
            if sp > 0 then inc(skip)
            else sp := i;
        end;
        if s[i] = ')' then
        begin
            if skip > 0 then dec(skip)
            else ep := i;
        end;
        if isNumber(s[i+1]) and (i = ep) then
        begin
            c := copy(s, sp + 1, ep - sp - 1);
            times := 0;
            while isNumber(s[i+1]) do begin
                times := times * 10 + ord(s[i+1]) - ord('0');
                inc(i);
            end;
            for j := 1 to times do extractB := extractB + c;
            inc(i);
            sp := 0;
            ep := 0;
        end
        else
        if sp = 0 then begin
            extractB := extractB + s[i];
            inc(i);
        end else inc(i);
    end;
end;

function extract(s: string): string;
begin
    s := extractNB(s);
    if s = extractB(s) then exit(s);
    exit(extract(extractB(s)));
end;

procedure run();
var s: string;
t: byte;
begin
    readln(fi, s);
    t := getType(s);
    if t = 2 then 
    writeln(fo, s)
    else if t = 1 then
    writeln(fo, extract(s))
    else
    writeln(fo, compress(s, True));
end;

begin
    assign(fi, 'convert.inp');
    assign(fo, 'convert.out');
    reset(fi);
    rewrite(fo);
    while not EOF(fi) do run();
    close(fi);
    close(fo);
end.