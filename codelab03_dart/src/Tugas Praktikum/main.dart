// Program: Menampilkan bilangan prima dari 0 sampai 201
// Setiap kali menemukan bilangan prima, tampilkan nama lengkap dan NIM.
// Ganti nilai pada variabel nama dan nim sesuai identitas Anda.

void main() {
  String nama = "Fatikah Salsabilla";
  String nim = "2341720003";

  for (int angka = 0; angka <= 201; angka++) {
    if (isPrima(angka)) {
      print("$angka adalah bilangan prima => ($nama, $nim)");
    }
  }
}

bool isPrima(int n) {
  if (n < 2) return false; // 0 dan 1 bukan prima
  for (int i = 2; i < n; i++) {
    if (n % i == 0) return false; // bukan prima
  }
  return true; //prima
}
