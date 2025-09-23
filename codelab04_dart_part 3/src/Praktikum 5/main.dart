void main() {
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);
  var record = (10, 20);
  print("Sebelum ditukar : $record");

  var recordBaru = tukar(record);
  print("Setelah ditukar : $recordBaru");

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Fatikah Salsabilla', 2341720003);
  print(mahasiswa);

  var mahasiswa2 = ('Fatikah Salsabilla', a: 2341720003, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
