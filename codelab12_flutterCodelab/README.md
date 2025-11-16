

## Soal 1
* Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
    ```dart
    return MaterialApp(
        title: 'Stream Fatikah',
        theme: ThemeData(primarySwatch: Colors.pink),
        home: const StreamHomePage(),
        );
    ```
* Gantilah warna tema aplikasi sesuai kesukaan Anda.
* Lakukan commit hasil jawaban Soal 1 dengan pesan "W12: Jawaban Soal 1"

## Soal 2
* Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
    ```dart
    Colors.indigo,
    Colors.cyan,
    Colors.lime,
    Colors.pink,
    Colors.orange,
    ```
* Lakukan commit hasil jawaban Soal 2 dengan pesan "W12: Jawaban Soal 2"

## Soal 3
* Jelaskan fungsi keyword yield* pada kode tersebut!
    * Untuk meneruskan semua nilai dari stream lain ke stream yang sedang dibuat.
* Apa maksud isi perintah kode tersebut?
    * Kode tersebut membuat stream yang mengeluarkan warna baru setiap 1 detik, dan warna diambil secara berulang dari daftar colors.
* Lakukan commit hasil jawaban Soal 3 dengan pesan "W12: Jawaban Soal 3"

## Soal 4
* Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![alt text](img/S4.gif)
* Lakukan commit hasil jawaban Soal 4 dengan pesan "W12: Jawaban Soal 4"

## Soal 5
* Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !
    * listen() → langsung menerima dan menangani data stream saat muncul.
    * await for → membaca data stream satu per satu sambil menunggu data berikutnya.
* Lakukan commit hasil jawaban Soal 5 dengan pesan "W12: Jawaban Soal 5"
![alt text](img/S5.gif)

## Soal 6
* Jelaskan maksud kode langkah 8 dan 10 tersebut!
    * Langkah 8: Menyiapkan stream dan mulai mendengarkan datanya. Setiap ada data baru dari stream, UI akan diperbarui.
    * Langkah 10: Menghasilkan angka acak dan mengirimkan angka tersebut ke stream supaya listener di langkah 8 bisa menerima dan menampilkan angka baru.
* Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![alt text](img/S6.gif)
* Lalu lakukan commit dengan pesan "W12: Jawaban Soal 6".

## Soal 7
* Jelaskan maksud kode langkah 13 sampai 15 tersebut!
    * Langkah 13 untuk mengirim error ke dalam stream.
    * Langkah 14 untuk penanganan jika stream menerima error.
    * Langkah 15 untuk fungsi yang sebelumnya mengirim angka acak sekarang diganti untuk memicu error dengan memanggil fungsi addError()
* Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.
* Lalu lakukan commit dengan pesan "W12: Jawaban Soal 7".

## Soal 8
* Jelaskan maksud kode langkah 1-3 tersebut!
    * Langkah 1 = Membuat variabel transformer
    * Langkah 2 = Mengatur bagaimana data dan error di stream diubah (data dikali 10, error jadi -1).
    * Langkah 3 = Menghubungkan stream dengan transformer agar datanya bisa diproses terlebih dahulu, lalu hasilnya digunakan untuk mengubah UI sesuai nilai yang sudah diolah.
* Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![alt text](img/S8.gif)
* Lalu lakukan commit dengan pesan "W12: Jawaban Soal 8".

## Soal 9
* Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!
    * Langkah 2 = Mempersiapkan stream dan memproses data yang masuk sebelum ditampilkan ke UI.
    * Langkah 6 = Menghentikan stream saat halaman tidak digunakan lagi.
    * Langkah 8 = Mengirim angka acak ke stream saat tombol ditekan agar tampil di layar.
* Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![alt text](img/image.png)

![alt text](img/S9.gif)
* Lalu lakukan commit dengan pesan "W12: Jawaban Soal 9".

## Soal 10
* Jelaskan mengapa error itu bisa terjadi ?
    * Error terjadi karena stream hanya bisa dibaca sekali, tapi program mencoba membaca dua kali.
    ![alt text](img/image2.png)

## Soal 11
* Jelaskan mengapa hal itu bisa terjadi ?
    * Stream biasa cuma bisa dipakai satu listener, jadi kalau ditambah listener lagi muncul error.Saat diubah jadi broadcast, stream bisa dipakai banyak listener sekaligus, dan setiap data baru dikirim ke semuanya.
* Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![alt text](img/S11.gif)
* Lalu lakukan commit dengan pesan "W12: Jawaban Soal 10,11".