void main(List<String> args) {
  var names1 = <String>{};
  Set<String> names2 = {};

  // Menambahkan elemen ke names1 dengan .add()
  names1.add("Ananda Satria"); // nama
  names1.add("2341720132");   // NIM

  // Menambahkan elemen ke names2 dengan .addAll()
  names2.addAll({"Ananda Satria", "2341720132"});

  // Print hasil
  print(names1);
  print(names2);
}