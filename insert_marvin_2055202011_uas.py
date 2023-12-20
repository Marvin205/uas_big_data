import requests
import mysql.connector
import time

# Konfigurasi database
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'db_bigdata'
}

# Alamat URL API
api_url = "https://opendata.bandung.go.id/api/bigdata/rumah_sakit_umum_daerah_bandung_kiwari/jmlh_psn_brdsrkn_pnykt_rwt_np_d_rsd_bndng_kwr_kt_bndng"

# Specify the number of pages you want to fetch
num_pages = 1

uas_data = []
page = 1

try:
    while page <= num_pages:
        try:
            response = requests.get(api_url, params={'page': page, 'per_page': 60}, timeout=5)  # Set a timeout of 10 seconds

            # Memeriksa status kode respons
            response.raise_for_status()

            # Parse data JSON yang diterima
            uas_data += response.json()['data']

            print(f"Data dari halaman {page} berhasil diambil.")
        except requests.exceptions.Timeout:
            print(f"Timeout saat mengambil data dari halaman {page}. Menunggu 5 detik dan mencoba lagi.")
            time.sleep(5)
            continue
        except requests.exceptions.RequestException as e:
            print(f"Terjadi kesalahan saat mengambil data dari halaman {page}: {str(e)}")
            break

        # Sleep for 5 seconds before making the next request
        time.sleep(5)

        page += 1

    if uas_data:
        # Membuka koneksi ke database
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()

        # Menambahkan data pengguna ke dalam tabel
        for uas in uas_data:
            cursor.execute('''
                INSERT INTO tbl_pasien (id, kode_provinsi, nama_provinsi, bps_kode_kabupaten_kota, bps_nama_kabupaten_kota, nama_penyakit, jumlah_pasien, satuan, tahun)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
            ''', (uas['id'], uas['kode_provinsi'], uas['nama_provinsi'], uas['bps_kode_kabupaten_kota'], uas['bps_nama_kabupaten_kota'], uas['nama_penyakit'], uas['jumlah_pasien'], uas['satuan'], uas['tahun']))
            # Memperbaiki data
            cursor.execute('''
                UPDATE tbl_pasien SET nama_penyakit='ABORTUS INCOMPLETE' WHERE id=3
            ''')
            cursor.execute('''
                UPDATE tbl_pasien SET nama_penyakit='PERSALINAN DENGAN LETAK SUNGSANG' WHERE id=5
            ''')
        # Menyimpan perubahan dan menutup koneksi
        conn.commit()
        conn.close()

        print("Data pasien telah disimpan ke database MySQL.")
    else:
        print("Tidak ada data yang berhasil diambil.")

except requests.exceptions.RequestException as e:
    print(f"Terjadi kesalahan saat menghubungi API: {str(e)}")
