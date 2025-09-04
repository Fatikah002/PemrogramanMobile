void main() {
  print('***Null Safety***');
  String name = "Fatikah"; //tidak boleh null
  String? nama;           //boleh null
  print(name);                 
  print(nama);    

  print('***Late Variable***');
  late String identitas;            // Deklarasi tanpa inisialisasi  
  identitas = "Fatikah Salsabilla"; // Inisialisasi sebelum digunakan
  print(identitas);    
}      