program no1;
uses crt;

var
  a, b, c: array[1..5, 1..5] of integer;
  barisA, kolomA, barisB,kolomB,i,j: integer;

begin
    clrscr;

    write('Jumlah baris matriks A (1-5): '); 
    readln(barisA);
    write('Jumlah kolom matriks A (1-5): '); 
    readln(kolomA);
    write('Jumlah baris matriks B (1-5): '); 
    readln(barisB);
    write('Jumlah kolom matriks B (1-5): '); 
    readln(kolomB);

    if (barisA >= 1) and (barisA <= 5) and (kolomA >= 1) and (kolomA <= 5) and (barisB >= 1) and (barisB <= 5) and (kolomB >= 1) and (kolomB <= 5) then
    begin
        if (barisA = barisB) and (kolomA = kolomB) then
        begin
            writeln('Matriks A:');
            for i := 1 to barisA do
            begin
                for j := 1 to kolomA do
                begin
                write('A[', i, ',', j, '] = ');
                readln(a[i,j]);
                end;
            end;
            
            writeln('Matriks B:');
            for i := 1 to barisB do
            begin
                for j := 1 to kolomB do
                begin
                write('B[', i, ',', j, '] = ');
                readln(b[i,j]);
                end;
            end;

            for i := 1 to barisA do
            begin
                for j := 1 to kolomA do
                begin
                    c[i,j] := a[i,j] + b[i,j];
                end;
            end;
                
            writeln('Hasil penjumlahan (A + B):');
            for i := 1 to barisA do
            begin
                for j := 1 to kolomA do
                begin
                    write(c[i,j]:5);
                end;
            end;

        end

        else
        begin
            writeln('Kedua matriks tidak dapat dijumlahkan');
            writeln('karena ukurannya berbeda (', barisA, 'x', kolomA, ' dan ', barisB, 'x', kolomB, ')');
        end;
    end

    else
    writeln('Jumlah baris dan kolom harus 1 sampai 5');

end.