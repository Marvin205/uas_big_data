# Buat koneksi ke server MySQL
import mysql.connector
db_connection = mysql.connector.connect(

    host="localhost",

    user="root",

    password="",

    database="db_bigdata"  # Ganti dengan nama database yang telah Anda buat

)

 

# Buat objek cursor

db_cursor = db_connection.cursor()

 

# Definisikan struktur tabel 'users'
drop_table_query = """
DROP TABLE IF EXISTS tbl_pasien;
"""
create_table_query = """
CREATE TABLE tbl_pasien (
    id bigint(20),
    kode_provinsi bigint(20),
    nama_provinsi text,
    bps_kode_kabupaten_kota text,
    bps_nama_kabupaten_kota text,
    nama_penyakit text,
    jumlah_pasien bigint(20),
    satuan text,
    tahun bigint(20)
);

"""

 

# Eksekusi perintah SQL untuk membuat tabel
db_cursor.execute(drop_table_query)
db_cursor.execute(create_table_query)

 

# Komit perubahan ke database

db_connection.commit()

 

# Tutup cursor dan koneksi