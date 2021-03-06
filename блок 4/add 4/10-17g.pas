{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_10_17g(input, output);
const
    n = 50;
    k = 8;
var
    a: array[1..n] of packed array [1..k] of char;
    alf: packed array [1..k] of char;
    i, j, kol, z: integer;
    c: char;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 10.17г');
    writeln('Ведите слова, разделяя пробелами: ');
    read(c);
    i := 1;
    alf := 'abcdefgh';
    while (c <> '.') and (i <= n) do begin
        j := 1;
        while (c <> ' ') and (c <> '.') and (j <= k) do begin
            a[i, j] := c;
            j := j + 1;
            read(c)
        end;
        while c = ' ' do
            read(c);
        for j := j to k do
            a[i, j] := ' ';
        i := i + 1;
    end;
    kol := i - 1;
    for z := 1 to kol - 1 do begin
        if a[z] <> a[kol] then begin
            i := 0;
            repeat
                i := i + 1;
                p := a[z, i] <> alf[i]
            until p or (i = k);
            if not p or (a[z, i] = ' ') then
                write(a[z], ' ')
        end
    end;
    writeln
end.
