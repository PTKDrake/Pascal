(*
 * Project: Pascal
 * User: PTKDrake
 * Date: 06/04/2021
 * Info: https://ad.memcvn.tk
 *)
program tester;

uses windows;

const tfi = 'BAI3.INP';
tfo = 'BAI3.OUT';

type arr1 = array[0..1000] of longint;
arr2 = array[1..2000000] of longint;

var sum: arr1;
prime: arr2;
n, m, p, q, t: longint;
fi, fo: text;

procedure sang_nguyen_to;
var i, j: longint;
begin
  prime[1] := 1;
  for i:= 2 to trunc(sqrt(2000000)) do
    if prime[i] = 0 then
    begin
      j := i*i;
      while j <= 1000000 do
      begin
        prime[j] := 1;
        j := j + i;
      end;
    end;
end;

procedure xuly;
var i,x,u,v: longint;
begin
  sum[0] := 0;
  assign(fi, tfi);
  assign(fo, tfo);
  reset(fi);
  rewrite(fo);
  read(fi, n, t, p, q, m);
  for i := 1 to n do
  begin
    x := (p*i) mod m + q;
    if prime[x] = 0 then sum[i] := sum[i-1] + 1
    else sum[i] := sum[i-1];
  end;
  for i := 1 to t do
  begin
    readln(fi, u, v);
    writeln(fo, sum[v] - sum[u-1]);
  end;
  close(fi);
  close(fo);
end;

begin
  SetConsoleOutputCP(CP_UTF8);
  sang_nguyen_to;
  xuly;
end.
