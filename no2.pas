program no2;
uses crt;

var
nilai: array[1..10] of integer;
n,i,j,temp: integer;

begin
    clrscr;

    write('Masukkan jumlah mahasiswa (1-10) : ');
    readln(n);

    if (n >= 1) and (n <= 10) then
    begin
        for i:= 1 to n do
        begin
        write('Nilai UAS mahasiswa ke-', i, ' : ');
        readln(nilai[i]);
        end;
        writeln;

        for i := 1 to n-1 do
        begin
            for j := 1 to n-i do
            if nilai[j] > nilai[j+1] then
            begin
            temp := nilai[j];
            nilai[j] := nilai[j+1];
            nilai[j+1] := temp;
            end;
        end;
        
        writeln('Nilai UAS (terendah ke tertinggi):');
        writeln;
    end
    else
        writeln('Jumlah mahasiswa harus 1 sampai 10');

end.