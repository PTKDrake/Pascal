const   fi='bai3.inp';
        fo='bai3.out';
var     a,b:ansistring;
        kt:integer;
        x,y,z:longint;
        dau:string;
procedure canbang(var s1,s2:ansistring);
begin
        while (length(s1)<length(s2)) do s1:='0'+s1;
        while (length(s2)<length(s1)) do s2:='0'+s2;
end;

function cmp(a,b:ansistring):integer;
begin
        while (length(a)<length(b)) do a:='0'+a;
        while (length(b)<length(a)) do b:='0'+b;
        if a>b then exit(1)
           else if a=b then exit(0)
                else exit(-1);
end;

function ad(s1,s2:ansistring): ansistring;
var     c,nho:byte;
        i:longint;
        t:ansistring;
begin
        canbang(s1,s2);
        nho:=0;
        t:='';
        for i:= length(s1) downto 1 do
           begin
                c:=ord(s1[i])-48+ord(s2[i])-48+nho;
                nho:=c div 10;
                c:=c mod 10;
                t:=chr(c+48)+t;
           end;
        if (nho=1) then t:='1'+t;
        exit(t);
end;

function sub(s1,s2:ansistring): ansistring;
var     c,muon:integer;
        i:longint;
        t:ansistring;
begin
        canbang(s1,s2);
        muon:=0;
        t:='';
        for i:=length(s1) downto 1 do
           begin
                c:=ord(s1[i])-48-muon;
                if (c < ord(s2[i])-48) then muon:=1
                else muon:=0;
                c:=muon*10+c-(ord(s2[i])-48);
                t:=chr(c+48)+t;
           end;
        while (t[1]='0') and (length(t)>=2) do delete(t,1,1);
        exit(t);
end;

function mul(s1:ansistring; x:longint): ansistring;
var     i:longint;
        t:ansistring;
begin
        t:='';
        for i:=1 to x do t:=ad(t,s1);
        exit(t);
end;

function mulstrstr(s1,s2:ansistring): ansistring;
var     o,tam,t:ansistring;
        c,i:longint;
begin
        t:='';
        o:='';
        for i:=length(s2) downto 1 do
           begin
                c:=ord(s2[i])-48;
                tam:=mul(s1,c);
                tam:=tam+o;
                t:=ad(t,tam);
                o:=o+'0';
           end;
        exit(t);
end;

function di(s1:ansistring; x:longint): ansistring;
var     i,du,c,d,k:longint;
        t:ansistring;
begin
        du:=0;
        t:='';
        i:=1;
        while (i<=length(s1)) do
           begin
                c:=du*10 + ord(s1[i])-48;
                k:=c div x;
                du:=c mod x;
                t:=t + chr(k+48);
                inc(i);
           end;
        while (t[1]='0') and (length(t)>=2) do delete(t,1,1);
        exit(t);
end;

function didu(s1:ansistring; x:longint): longint;
var     i,du,c,d,k:longint;
        t:ansistring;
begin
        du:=0;
        t:='';
        i:=1;
        while (i<=length(s1)) do
           begin
                c:=du*10 + ord(s1[i])-48;
                k:=c div x;
                du:=c mod x;
                t:=t + chr(k+48);
                inc(i);
           end;
        exit(du);
end;

function divstrstr(a,b:ansistring):ansistring;
var     p:array[0..9] of ansistring;
        i,k:longint;
        t,x:ansistring;

begin
        p[0]:='0';
        for i:=1 to 9 do p[i]:=ad(p[i-1],b);
        t:='';
        x:='';
        for i:=1 to length(a) do
           begin
                x:=x+a[i];
                k:=1;
                if cmp(x,p[k])<0 then dec(k)
                else
                   begin
                      while (cmp(x,p[k])>=0) do inc(k);
                      dec(k);
                   end;
                t:=t+chr(k+48);
                x:=sub(x,p[k]);
           end;
        while (t[1]='0') and (length(t)>=2) do delete(t,1,1);
        exit(t);
end;

function np(s:ansistring):ansistring;
var     t:ansistring;
begin
        t:='';
        while(s<>'0') do
           begin
                t:=chr(didu(s,2)+48)+t;
                s:=di(s,2);
           end;
        exit(t);
end;

BEGIN
        assign(input,fi);
        reset(input);
        assign(output,fo);
        rewrite(output);
        readln(a);
        readln(dau);
        readln(b);
        if (dau='cong') then writeln(np(ad(a,b)));
        if (dau='tru') then writeln(np(sub(a,b)));
        if (dau='nhan') then writeln(np(mulstrstr(a,b)));
        if (dau='chia') then writeln(np(divstrstr(a,b)));
END.
