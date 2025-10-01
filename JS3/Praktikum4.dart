void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  // print(list1); // <--- Error tidak ada variabel bernama list1
  print(list);
  print(list2);
  print(list2.length);

  // ---------------------------------- langkah 2
  // Outputnya adalah seperti berikut:
  /*
    [1, 2, 3]
    [0, 1, 2, 3]
    4
  */
  // Terlihat jika kita bisa menambahkan semua isi dari list satu ke list lainnya
  // menggunakan "...list"

  // menambahkan kode berikut:
  // list1 = [1, 2, null]; <--- Error, tidak dideklarasikan variabel list1
  List list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  print(list3.length);

  /**
   *  Lalu hasilnya adalah seperti berikut:
   *  [1, 2, null]
      [0, 1, 2, null]
      4
   */
  // Telrihat juga walau value nya null, kita masih bisa menambahkannya ke
  // dalam list lain.

  // ---------------------------------- langkah 4
  bool promoActive =
      true; // <--- terlihat jika saya mendeklrasikan variabel promoActive
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // Lalu hasilnya adalah sebagai berikut:
  /**
   *  [Home, Furniture, Plants, Outlet]
   */
  // Itu output jika variabel promoActive bernilai 'true'
  // Jika variabel promoActive bernilai  'false' maka outputnya adalah:
  /**
   * [Home, Furniture, Plants]
   */
  // Terlihat jika saya mengatur valuenya menjadi 'false',
  // elemen 'Outlet' tidak ditampilkan. Sehingga dari sini kit atahu bahwa kita
  // bisa memberikan kondisi didalam elemen-elemen List.

  // ---------------------------------- langkah 5
  String login =
      'Manager'; // <--- terlihat jika saya mendeklarasikan variabel login
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory',
  ];
  print(nav2);

  // Lalu berikut adalah outputnya:
  /**
   * [Home, Furniture, Plants, Inventory]
   */
  // Terlihat jika saya bisa memberikan kondisi pada sebuah elemen menggunakan
  // 'case' atau switch pada elemen-elemen List.
  // Lalu berikut adalah output ketika kondisi login tidak terpenuhi
  /**
   * [Home, Furniture, Plants]
   */

  // ---------------------------------- langkah 6
  // Lalu saya menambakan kode program berikut:
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);

  // Lalu outputnya adalah sebagai berikut:
  /**
   * [#0, #1, #2, #3]
   */
  // Terlihat jika kita bisa memanipulasi elemen-elemen List menggunakan for
  // seperti pada kode program di atas.



  // Tips!
  // Selain menggunakan looping manual menggunakan for, kita juga bisa membuat 
  // List baru atau memodifikasi List yang sudah ada menggunakan List.generate()
  var generatedList = List.generate(listOfInts.length + 1, (i) => '#$i'); // <--- ada anonymous function/lambda function nya () =>
  assert(generatedList[1] == '#1');
  print(generatedList);

}