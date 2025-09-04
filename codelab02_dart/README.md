Soal 2
Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!
Jawab: 
1. Bahasa utama Flutter 
    Semua kode aplikasi, plugin, dan manajemen dependensi di Flutter ditulis dalam Dart.
2. Fitur khusus
    Fitur-fitur seperti hot reload, Null Safety, dan sistem type-safe berasal langsung dari kemampuan Dart.
3. Produktivitas 
    Memahami dasar Dart (OOP, operator, function, class) memudahkan kita menulis kode Flutter lebih cepat dan rapi.
4. Debugging lebih mudah
    Dengan paham Dart, kita bisa cepat menemukan dan memperbaiki bug tanpa hanya mengandalkan Flutter.
4. Efisiensi lintas platform
    Dart bisa dikompilasi ke JavaScript (web) maupun native (ARM/x86) sehingga cocok untuk aplikasi multi-platform.

Soal 3
Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.
1. Sejarah & Tujuan Dart
    Diluncurkan tahun 2011, versi stabil 2013, Dart 2.0 pada 2018.
    Awalnya untuk web (pengganti JavaScript), kini fokus mobile dengan Flutter.
2. Fitur Utama Dart
    Productive tooling → IDE, plugin, ekosistem paket.
    Garbage collection untuk manajemen memori.
    Optional type annotations tapi tetap statically typed.
    Mendukung portability (web & native)
3. Eksekusi Kode Dart
    JIT Compilation → untuk development (debugging, hot reload).
    AOT Compilation → untuk produksi, performa lebih cepat.
4. OOP (Object-Oriented Programming)
    Mendukung class, object, inheritance, encapsulation, abstraction, polymorphism.
5. Operator di Dart
    Aritmatika (+, -, *, /, ~/).
    Equality & Relational (==, !=, >, <, >=, <=).
    Logical (!, &&, ||).

Soal 4
Buatlah penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel!
1. Null Safety
    - Null Safety mencegah error akibat nilai null yang tidak terduga.
    - Variabel harus jelas apakah bisa null atau tidak.
    - Tipe data tanpa tanda tanya ? tidak boleh null, sedangkan dengan ? bisa null.

2. Late Variable
    - late digunakan ketika variabel pasti diinisialisasi nanti sebelum dipakai.
    - Berguna untuk inisialisasi yang tertunda (lazy initialization) atau memerlukan proses tertentu.
