//  3. JENIS PARAMETER DI FUNCTION
// void main() {
//   // 1. Positional Parameter (harus sesuai urutan)
//   void tambah(int a, int b) {
//     print("===== Positional Parameter =====");
//     print("Positional -> $a + $b = ${a + b}");
//   }

//   // 2. Optional Positional Parameter ([ ])
//   void sapa(String nama, [String? pesan]) {
//     print("===== Optional Positional Parameter =====");
//     print("Optional Positional -> Halo $nama, ${pesan ?? 'Apa kabar?'}");
//   }

//   // 3. Named Parameter ({ })
//   void buatAkun({required String username, String role = "user"}) {
//     print("===== Named Parameter =====");
//     print("Named -> Username: $username, Role: $role");
//   }

//   // ==== Pemanggilan ====
//   tambah(5, 7);

//   sapa("Fatikah");
//   sapa("Salsa", "Selamat pagi!");

//   buatAkun(username: "fatikah");
//   buatAkun(username: "admin123", role: "admin");
// }

// 4. FUNCTION SEBAGAI FIST-CLASS OBJECT

// void halo(String nama) {
//   print("Halo, $nama!");
// }

// void jalankan(Function fn, String param) {
//   fn(param);
// }

// void main() {
//   var fungsi = halo; // simpan function dalam variabel
//   fungsi("Salsa");   // panggil lewat variabel

//   jalankan(halo, "Fatikah"); // function jadi parameter
// }

// 5. ANONYMOUS FUNCTION

// void main() {
//   // Anonymous function langsung di variabel
//   var kali = (int a, int b) {
//     return a * b;
//   };
//   print(kali(4, 5)); // Output: 20

//   // Anonymous function di parameter fungsi
//   var daftar = ["apel", "mangga", "pisang"];
//   daftar.forEach((item) {
//     print("Buah: $item");
//   });
// }

// 6. LEXICAN SCOPE DAN LEXICAN CLOSURE

// void main() {
//   print("=== Lexical Scope ===");
//   var nama = "Fatikah";

//   void sapa() {
//     print("Halo $nama");
//   }

//   sapa(); 

//   print("\n=== Lexical Closure ===");
//   Function buatCounter() {
//     int hitung = 0;

//     return () {
//       hitung++;
//       return hitung;
//     };
//   }

//   var counter1 = buatCounter();
//   print(counter1()); // 1
//   print(counter1()); // 2
//   print(counter1()); // 3

//   var counter2 = buatCounter();
//   print(counter2()); // 1
// }

// 7. RETURN MULTIPLE VALUE DI FUNCTION

// Contoh Return Multiple Values di Functions
// 1. Return List
List<int> operasiList(int a, int b) {
  return [a + b, a - b, a * b];
}

// 2. Return Map
Map<String, int> operasiMap(int a, int b) {
  return {
    "tambah": a + b,
    "kurang": a - b,
    "kali": a * b,
  };
}

// 3. Return Class
class Hasil {
  int tambah;
  int kurang;
  int kali;
  Hasil(this.tambah, this.kurang, this.kali);
}

Hasil operasiClass(int a, int b) {
  return Hasil(a + b, a - b, a * b);
}

void main() {
  print("=== Return List ===");
  var hasilList = operasiList(10, 5);
  print("Tambah: ${hasilList[0]}, Kurang: ${hasilList[1]}, Kali: ${hasilList[2]}");

  print("\n=== Return Map ===");
  var hasilMap = operasiMap(10, 5);
  print(hasilMap); // {tambah: 15, kurang: 5, kali: 50}

  print("\n=== Return Class ===");
  var hasilClass = operasiClass(10, 5);
  print("Tambah: ${hasilClass.tambah}, Kurang: ${hasilClass.kurang}, Kali: ${hasilClass.kali}");
}

