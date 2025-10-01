void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Setelah di run, hasilnya adalah seperti ini:
  /**
   * (first, last, a: 2, b: true)
   */
  // Terlihat ada tipedata baru yang dimana bisa menampung beberapa tipe data
  // sekaligus.

  Record recordResult = tukar((19, 45));
  print(recordResult);
  // Pada saat di run hasilnya seperti ini:
  /**
   * (45, 19)
   */
  // Jadi dari fungsi ini, kita tahu bahwa tipedata Record itu bisa digunakan
  // sebagai parameter ataupun return value.

  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa; // <---- error dikarenakan belum diinisialisasi
  (String, int) mahasiswa = ("Ananda Satria Putra Nugraha", 2341720132);
  print(mahasiswa);

  // Maka hasilnya akan menjadi seperti berikut:
  /**
   * (Ananda Satria Putra Nugraha, 2341720132)
   */

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
  // Terlihat jika hasil outputnya adalah seperti berikut:
  /**
   * first
   * 2
   * true
   * last
   */

  // lalu coba ubah salah satu valuenya menjadi Nama dan NIM 
  mahasiswa2 = ("Ananda Satria Putra Nugraha", a: 2341720132, b: true, 'last');
  print(mahasiswa2.$1);
  print(mahasiswa2.a);

  // Dan outputnya adalah sebagai berikut:
  /**
   * Ananda Satria Putra Nugraha
     2341720132
   */
}

// ---------------------------------- langkah 3
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}