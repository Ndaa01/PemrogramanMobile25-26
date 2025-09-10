void main() {
  // Null Safety
  String? bisaKosong; // Variabel ini boleh null
  print(bisaKosong);   // Output: null
  
  // Jika langsung akses tanpa cek null -> bisa error:
  // print(bisaKosong.length); // ERROR
  
  // Solusi: cek null dulu atau gunakan null-aware operator
  print(bisaKosong?.length); // Output: null
  
  // Late Variable
  late String nama; // Deklarasi, tapi belum ada nilai
  
  // Jika langsung akses sebelum diinisialisasi -> error runtime
  // print(nama); // Akan error: LateInitializationError
  
  // Setelah diberi nilai, baru aman digunakan
  nama = "Nanda";
  print(nama);       // Output: Nanda
  print(nama.length); // Output: 5
}
