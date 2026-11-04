CREATE TABLE admin_puskesmas (
    id_admin VARCHAR(20) PRIMARY KEY,
    nama_admin VARCHAR(50),
    email_admin VARCHAR(50),
    jenis_kelamin VARCHAR(5),
    no_hp VARCHAR(12),
    username VARCHAR(20),
    password VARCHAR(50)
);

SELECT * FROM admin_puskesmas;

CREATE TABLE diagnosa (
    id_diagnosa VARCHAR(15) PRIMARY KEY,
    id_pasien VARCHAR(15),
    id_dokter VARCHAR(20),
    id_admin VARCHAR(20),
    id_apoteker VARCHAR(15),
    hasil_diagnosa VARCHAR(225),
    tanggal_diagnosa DATE,
    kode_obat VARCHAR(15),
    status_rujukan VARCHAR(55),

    FOREIGN KEY (id_admin)
    REFERENCES admin_puskesmas(id_admin)

);

SELECT * FROM diagnosa;

INSERT INTO admin_puskesmas (id_admin, nama_admin, email_admin, jenis_kelamin, no_hp, username, password)
VALUES
    ('ADM001', 'Andi Saputra', 'andi@gmail.com', 'L', '081234567890', 'andi01', 'admin123'),
    ('ADM002', 'Siti Rahma', 'siti@gmail.com', 'P', '081234567891', 'siti02', 'admin123'),
    ('ADM003', 'Budi Santoso', 'budi@gmail.com', 'L', '081234567892', 'budi03', 'admin123'),
    ('ADM004', 'Dewi Anggraini', 'dewi@gmail.com', 'P', '081234567893', 'dewi04', 'admin123'),
    ('ADM005', 'Rizki Pratama', 'rizki@gmail.com', 'L', '081234567894', 'rizki05', 'admin123');

SELECT * FROM admin_puskesmas;