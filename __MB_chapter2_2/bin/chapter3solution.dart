import 'chapter3.dart';

extension Chapter3Solution on Chapter3 {
  int runTests() {
    int totalPoints = 0;

    // Memeriksa setiap soal dari 1 hingga 150.
    for (int i = 1; i <= 150; i++) {
      switch (i) {
        case 101:
          // Exercise 101: Memeriksa soal 101 dan menambahkan poin jika benar.
          if (filterFibonacciNumbers(this) == [1, 2, 3, 5, 8]) {
            totalPoints++;
          }
          break;
        case 102:
          // Exercise 102: Memeriksa soal 102 dan menambahkan poin jika benar.
          if (removeWordsWithSameStartEndChar(this) == "apple door") {
            totalPoints++;
          }
          break;
        // Implementasi untuk soal-soal lainnya akan ditambahkan di sini.
        // Anda dapat menambahkan implementasi untuk soal-soal lainnya sesuai dengan pola yang ada di atas.
        // Contoh: case 103, case 104, dst.
        case 130:
          // Exercise 130: Memeriksa soal 130 dan menambahkan poin jika benar.
          if (emphasizePrimeNumbers130(this) ==
              ["+1", "+2", "+3", 4, "+5", 6]) {
            totalPoints++;
          }
          break;
        // Implementasi untuk soal-soal lainnya akan ditambahkan di sini.
        // Anda dapat menambahkan implementasi untuk soal-soal lainnya sesuai dengan pola yang ada di atas.
        // Contoh: case 131, case 132, dst.
        case 150:
          // Exercise 150: Memeriksa soal 150 dan menambahkan poin jika benar.
          if (emphasizePrimeNumbers150(this) ==
              ["+1", "+2", "+3", 4, "+5", 6]) {
            totalPoints++;
          }
          break;
        default:
          // Jika nomor soal tidak ada dalam daftar yang diperiksa, lewati.
          break;
      }
    }

    // Mengembalikan jumlah total poin yang didapatkan.
    return totalPoints;
  }
}
