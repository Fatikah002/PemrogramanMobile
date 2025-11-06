
### Soal 1
* Tambahkan nama panggilan Anda pada **title** app sebagai identitas hasil pekerjaan Anda.
    ```dart
    return Scaffold(
        appBar: AppBar(
            title: const Text('Back from the Future Fatikah'),
        ),
    ```

### Soal 2
* Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
![alt text](img/image.png)

* Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W11: Soal 2".
![alt text](img/image1.png)
    - ![alt text](img/image2.png)
    ```dart
            Future<http.Response> getData() async {
        const authority = 'www.googleapis.com';
        const path = '/books/v1/volumes/WwPHEAAAQBAJ';
        final url = Uri.https(authority, path);
        return await http.get(url);
        }
    ```

### Soal 3

* Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
    - **substring**, digunakan untuk Membatasi teks hasil API agar tidak lebih dari 450 karakter dan mencegah error.
    - **catchError**, digunakan untuk Menangani error jika proses **getData()** gagal (misalnya jaringan bermasalah).

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 3".
![alt text](img/S3.gif)
