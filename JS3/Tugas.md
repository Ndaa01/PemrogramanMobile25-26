# Tugas Praktikum
## _1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!_

## 2. Jelaskan yang dimaksud Functions dalam bahasa Dart!

Function dalam bahasa dart sama saja dengan function dalam bahasa java, php, javascript dan bahasa bahasa sejenis lainnya. 

Function dalam artian general disini adalah sebuah __sekumpulan baris kode yang bisa digunakan kembali__/digunakan berkali-kali, dia juga bisa memiliki kembalian/return value. 

## 3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

### Ada beberapa jenis parameter di dart ini:

1. __Required Positional Parameter__  

Yaitu parameter diwajibkan untuk diisi, dan urutan pada saat pengisian parameter harus sesuai dan urut dengan parameter yang diminta.

```diff
void main(){
+   perkenalan("Nanda", 20); ✔️ lengkap dan urut
}

perkenalan(String nama, int umur){
    print("$nama berumur $umur tahun");
}
```

2. __Named Parameter__

Yaitu parameter yang memiliki nama di masing-masing variabel dari parameter tersebut. Caranya yaitu dengan membungkus parameter dengan kurung kurawal dan juga memberikan kata kunci `required` jika variabel tersebut tidak bisa null. Karena masing-masing variabel parameternya memiliki nama, sehingga kita bisa mengubah urutan pengisian parameter sesuka editor. 

```diff
void main(){
+   perkenalan(umur: 20, nama: "Nanda"); ✔️ boleh tidak urut
-   perkenalan(nama: "Nanda"); ❌ parameter umur harus diisi.
+   perkenalan(nama: "Nanda", umur: 20); ✔️ lengkap dan urut
}

perkenalan({required String nama, required int umur}){
    print("$nama berumur $umur tahun");
}
```

```diff
void main(){
+   perkenalan(umur: 20, nama: "Nanda"); ✔️ boleh tidak urut
+   perkenalan(nama: "Nanda"); ✔️ parameter umur tidak harus diisi.
+   perkenalan(nama: "Nanda", umur: 20); ✔️ lengkap dan urut
}

perkenalan({required String nama, int umur = 0}){
    print("$nama berumur $umur tahun");
}
```

3. __Optional Positioned Parameter__

Parameternya mirip seperti `Required Position Parameter` tetapi variabel dari parameter yang diberi karakter ini akan bisa bersifat opsional/tidak perlu diisi.

```diff
void main(){
-   perkenalan(20, "Nanda"); ❌ pengisian parameter terbalik
+   perkenalan("Nanda"); ✔️ parameter umur tidak harus diisi.
+   perkenalan("Nanda", 20); ✔️ lengkap dan urut
}

perkenalan(String nama, [int? umur]){
    print("$nama berumur $umur tahun"); // <--- nilai umur akan null
}
```

```diff
void main(){
-   perkenalan(20, "Nanda"); ❌ pengisian parameter terbalik
+   perkenalan("Nanda"); ✔️ parameter umur tidak harus diisi.
+   perkenalan("Nanda", 20); ✔️ lengkap dan urut
}

perkenalan(String nama, [int umur = 0]){
    print("$nama berumur $umur tahun"); // <--- nilai umur akan 0
}
```

## 4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

Di Dart, function dianggap sebagai "first-class object" artinya:

- __Function diperlakukan sama seperti data/variabel lain__.

- __Bisa disimpan di variabel__,

```dart
void sapa(String nama) {
  print("Halo $nama");
}

void main() {
  var fungsiSapa = sapa; // simpan function ke variabel
  fungsiSapa("Budi");    // panggil lewat variabel
}
```

- __Bisa dikirim sebagai parameter ke function lain__,

```dart
void jalankan(Function f) {
  f(); // panggil function yang dikirim
}

void main() {
  jalankan(() => print("Ini dari function yang dikirim!"));
}
```

- __Bisa juga dikembalikan (return) dari function__.

```dart
Function buatSapa() {
  return () => print("Halo dari function return!");
}

void main() {
  var f = buatSapa(); // simpan function hasil return
  f();                // panggil function yang dikembalikan
}
```

Jadi, function bukan hanya bisa dipanggil saja, tetapi juga bisa “dipindah-pindahkan” seperti sebuah nilai.

## 5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

Anonymous Function adalah sebuah fungsi portabel yang tidak memiliki nama. Fungsi ini bertindak seperti fungsi biasanya, tetapi dirinya tidak mempunyai nama. Berikut adalah contoh dari anonymous function sederhana, 

```dart
void main() {
    var sapa = (String nama) {
        print("Halo $nama");
    }

    sapa("Nanda");
}
```

Selain itu, anonymous function juga bisa digunakan sebagai parameter. Berikut adalah contoh dari anonnymous function sebagai parameter,

```dart
void main() {
    penjumlahan(1, 2, (hasil){
        print(hasil);
    });
}

void penjumlahan(int a, int b, Function(int h) hasil){
  int h = a + b;
  hasil(h);
}
```

Selain itu anonymous function bisa berupa sebuah `arrow function`, yang dimana ini berguna jika kode dari anonymous function hanya berisi kode yang sederhana (1 baris kode). COntohnya adalah seperti berikut,

```dart
void main() {
    penjumlahan(1, 2, (hasil) => print(hasil));
}

void penjumlahan(int a, int b, Function(int h) hasil){
  int h = a + b;
  hasil(h);
}
```

## 6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

### Lexical Scope

- Scope artinya “cakupan/ruang lingkup variabel”.
- Lexical Scope artinya: variabel yang bisa diakses dalam sebuah function ditentukan oleh posisi function itu ditulis dalam kode, bukan di mana function itu dipanggil.
- Jadi, kalau sebuah function ditulis di dalam function lain, dia bisa “melihat” variabel-variabel luar (di scope induknya).

```dart
void main() {
  var nama = "Nanda";

  void sapa() {
    // function bisa akses variabel di luar scope-nya
    print("Halo $nama");
  }

  sapa(); // Halo Nanda
}
```

### Lexical Closures

- Closure = function yang “membawa” variabel dari scope luar bersamanya, bahkan setelah scope luar itu selesai dieksekusi.
- Dengan closure, variabel di scope luar bisa “tetap hidup” karena ada function dalam yang masih memakainya.

```dart
Function hitung() {
  var counter = 0;

  // inner function jadi closure
  return () {
    counter++;
    return counter;
  };
}

void main() {
  var tambah = hitung(); 

  print(tambah()); // 1
  print(tambah()); // 2
  print(tambah()); // 3
}
```

## 7. Jelaskan dengan contoh cara membuat return multiple value di Functions!

Kita bisa membuat return multiple value di dart menggunakan `Record`, dan berikut adalah contohnya,

```dart
({String nama, int umur}) getUser() {
  return (nama: "Nanda", umur: 20);
}

void main() {
  ({String nama, int umur}) data = getUser();
  print("Nama: ${data.nama}, Umur: ${data.umur}");
}
```

## _8. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!_