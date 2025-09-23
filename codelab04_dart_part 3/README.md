# Praktikum Week 4

**Nama:** Fatikah Salsabilla  
**No Absen:** 14  
**Kelas:** 3H  

## Praktikum 1
2.  Pada kode program tersebut membuat list dengan panjang list 3, yang berisi 3 elemen yaitu 1, 2, 3.Kemudian melakukan pengecekan dengan menggunakan assert bahwa panjang list 3 dan elemen kedua bernilai 2. Setelah itu, program mencetak panjang list dan elemen 2, lalu mengubah dari 2 menjadi 1
 ![alt text](img/image.png)


3. Terjadi error, karena list awalnya bertipe null, kemudian di isi dengan string.
 ![alt text](img/image1.png)
 ### Perbaikan
![alt text](img/image2.png)

## Praktikum 2
2. Kode program tidak error, karena kode tersebut membuat set bertipe string, sehingga elemen bisa ditampung dalam set tersebut
 ![alt text](img/image3.png)

3.  Kode program tidak error.Variabel halogens, names1, dan names2 bisa dicetak , sedangkan names3 adalah map kosong. Program tetap berjalan, tapi names3 tidak bisa digunakan seperti set.
![alt text](img/image4.png)
Perbaikan
![alt text](img/image5.png)

## Praktikum 3
2. Kode program tersebut tidak mengalami error, karena map bisa punya key dan value beda-beda tipe.Sehingga gabungan key string sama value angka tidak membuat error
![alt text](img/image6.png)

3. Tidak terjadi error, dan output sama dengan sebelumnya
![alt text](img/image7.png)
 ### Perbaikan
![alt text](img/image8.png)

## Praktikum 4
2. Terjadi error, karena variabel list1 tidak ada
![alt text](img/image9.png)
 ### Perbaikan
![alt text](img/image10.png)

3. Terjadi error. karena tidak ada deklarasi variabel list1
 ![alt text](img/image11.png)
 ### Perbaikan
  ![alt text](img/image12.png)

4. Terjadi error, karena variabel promoActive belum dideklarasikan
![alt text](img/image13.png)
 ### Perbaikan
**Jika TRUE**
Jika true, maka akan menampilkan "Outlet" karena if bernilai true
![alt text](img/image14.png)
**Jika FALSE**
Jika false, maka tidak menampilkan "Outlet" karena if bernilai false
![alt text](img/image15.png)

5. Terjadi error, karena variabel login belum dideklarasikan
 ![alt text](img/image16.png)
 ### Perbaikan 
 **Login = Manager**
 Jika Login menggunakan "Manager" maka "Inventory" akan ditampilkan karena kondisi bernilai true
 ![alt text](img/image17.png)
 **Login = User**
 Jika Login menggunakan "User" maka "Inventory" tidak ditampilkan karena kondisi bernilai false
 ![alt text](img/image18.png)

6. Tidak terjadi error, Collection for digunakan untuk membuat list baru berdasarkan list lain
 ![alt text](img/image19.png)

## Praktikum 5
2. Terjadi error, karena tidak ada tanda ";" pada line 3
![alt text](img/image20.png)
 ### Perbaikan
![alt text](img/image21.png)

3. Kode program tersebut membuat record campuran dan mencetaknya.Fungsi tukar digunakan untuk membali record, tapi record di main berbeda tipe sehingga tidak bisa dipakai langsung dengan tukar.
![alt text](img/image22.png)
 ### Perbaikan
![alt text](img/image23.png)

4. Terjadi error, karena variabel non-nullable belum di inisialisasi
![alt text](img/image24.png)
 ### Perbaikan
![alt text](img/image25.png)

5. Kode program tersebut membuat record sederhana dan campuran, membalik (10, 20) pakai tukar(), menyimpan nama & NIM mahasiswa, serta mengakses elemen posisi dengan $1/$2 dan elemen bernama dengan .a/.b. ![alt text](img/image26.png)
 ### Perbaikan
![alt text](img/image27.png)

## Tugas Praktikum
2. Function  adalah blok kode yang dapat dipanggil untuk menjalankan suatu tugas tertentu.

3. ![alt text](img/image28.png)
* Positional Parameters (parameter wajib sesuai urutan)
* Optional Positional Parameters (pakai [ ] dan opsional)
* Named Parameters (pakai { } dengan nama parameter)

4. ![alt text](img/image29.png)
Function diperlakukan sebagai objek biasa sehingga bisa disimpan dalam variabel dijadikan argumen fungsi lain,dijadikan nilai return.

5. ![alt text](img/image30.png)
Anonymous function adalah fungsi tanpa nama, biasanya digunakan untuk kebutuhan cepat.

6. ![alt text](img/image31.png)
* Lexical Scope: Variabel hanya bisa diakses di dalam ruang lingkup (scope) tempat ia didefinisikan.
* Closure adalah fungsi yang “mengikat” variabel dari scope luar, sehingga tetap bisa digunakan walaupun scope asalnya sudah selesai dieksekusi.

7. ![alt text](img/image32.png)
* List    = cepat & sederhana, tapi harus ingat index.
* Map     = lebih jelas karena ada key, tapi tetap berupa struktur data umum.
* Class   = cara paling OOP, lebih rapi kalau data banyak & kompleks.