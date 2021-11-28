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

function getType(s: ansistring): dword;
var i, l: dword;
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

function toString(n: DWord): AnsiString;
begin
    toString := '';
    while n > 0 do 
    begin
        toString := chr(n mod 10 + ord('0')) + toString;
        n := n div 10;
    end;
end;

function compressNB(s: ansistring): ansistring;
var i,j,sp,ep: dword;
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
            compressNB := compressNB + s[i] + toString(j);
            inc(i);
        end;
    end;
end;

function checkBrackets(s: ansistring): Boolean;
var c: LongInt;
i: dword;
begin
    c := 0;
    for i := 1 to Length(s) do
    begin
        if s[i] = '(' then inc(c);
        if s[i] = ')' then dec(c);
    end;
    exit(c = 0);
end;

function search(s: ansistring; sp,ep: dword): dword;
var l: dword;
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

function compressB(s: ansistring): ansistring;
var i,j,l: dword;
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
                compressB := compressB + '(' + copy(s, i, j - i + 1) + ')' + toString(l);
                i := i + (j - i + 1) * l;
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

function compress(s: ansistring; nb: Boolean): ansistring;
var temp: ansistring;
begin
    if nb then s := compressNB(s);
    temp := compressB(s);
    if s = temp then exit(s);
    exit(compress(temp, False));
end;

function extractNB(s: ansistring): ansistring;
var i,j,times: dWord;
c: char;
begin
    extractNB := '';
    i := 1;
    while i <= length(s) do
    begin
        if isNumber(s[i+1]) and not isBracket(s[i]) and not isNumber(s[i]) then
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

function extractB(s: ansistring): ansistring;
var i,j,skip,sp,ep,times: dWord;
c: ansistring;
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

function extract(s: ansistring; nb: Boolean): ansistring;
var temp: ansistring;
begin
    if nb then s := extractNB(s);
    temp := extractB(s);
    if s = temp then exit(s);
    exit(extract(temp, False));
end;

procedure run();
var s: ansistring;
t: dword;
begin
    readln(fi, s);
    t := getType(s);
    if t = 2 then 
    writeln(fo, s)
    else if t = 1 then
    writeln(fo, extract(s, True))
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