import mysql.connector
global cnx

cnx = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="",
    database="paspor"
)

def get_permohonan_status(permohonan_id: int):
    # Buat objek Cursor
    cursor = cnx.cursor()

    # Tulis SQL query
    query = ("SELECT status_permohonan FROM cek_proses WHERE permohonan_id = %s")

    # Jalankan query
    cursor.execute(query, (permohonan_id,))

    # Ambil hasilnya
    result = cursor.fetchone()

    # Close the cursor and connection
    cursor.close()

    if result is not None:
        return result[0]
    else:
        return None

def get_permohonan_nama(permohonan_id: int):
    # Buat objek Cursor
    cursor = cnx.cursor()

    # Tulis SQL query
    query = ("SELECT nama_cek FROM cek_proses WHERE permohonan_id = %s")

    # Jalankan query
    cursor.execute(query, (permohonan_id,))

    # Ambil hasilnya
    result = cursor.fetchone()

    # Close the cursor and connection
    cursor.close()

    if result is not None:
        return result[0]
    else:
        return None
    