void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add("Fatikah Salsabilla");
  names1.add("2341720003");
  names2.addAll({"Fatikah Salsabilla", "2341720003"});

  print(names1);
  print(names2);
}
