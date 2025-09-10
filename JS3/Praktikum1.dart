void main() {
  //Mengganti isi dari list sehingga hanya muncul jumlah list, nama dan NIM
  List<dynamic> list = ["null", "Ananda Satria", "2341720132", "null", "null"];
  assert(list.length == 5);
  assert(list[1] == "Ananda Satria");
  print(list.length);
  print(list[1]);
  print(list[2]);

  list[1] = "null";
  assert(list[1] == "null");
  print(list[1]);
}

