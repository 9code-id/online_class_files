import 'contoh_oop2.1.dart';

void main() {
  //CTRL+.
  Person person = Person('John', 30);

  print(person.);
  print('Nama: ${person.name}');
  print('Usia: ${person.age} tahun');
  person.age = 35; // Mengubah usia dengan setter
  print('Usia setelah perubahan: ${person.age} tahun');
}
