program no3;
uses crt;

var
tugas, kuis, uts, uas: array[1..5] of integer;
rerata: array[1..5] of real;
n, i: integer;

begin
    clrscr;

    write('Masukkan jumlah mahasiswa (1-5): ');
    readln(n);

    if (n >= 1) and (n <= 5) then
    begin
        for i := 1 to n do
        begin
        writeln('Mahasiswa ke-', i);
        write('Nilai tugas: ');
        readln(tugas[i]);
        write('Nilai kuis: ');
        readln(kuis[i]);
        write('Nilai UTS: ');
        readln(uts[i]);
        write('Nilai UAS: ');
        readln(uas[i]);

        rerata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
        writeln;
        end;

        for i := 1 to n do
        begin
        writeln('Mahasiswa ke-', i);
        writeln('  Tugas      : ', tugas[i]);
        writeln('  Kuis       : ', kuis[i]);
        writeln('  UTS        : ', uts[i]);
        writeln('  UAS        : ', uas[i]);
        writeln('  Rata-rata  : ', rerata[i]:0:2);
        if rerata[i] >= 70 then
            writeln('  Keterangan : LULUS')
        else
            writeln('  Keterangan : TIDAK LULUS');
        writeln;
        end;
    end
    else
        writeln('Jumlah mahasiswa harus 1 sampai 5');

    end.