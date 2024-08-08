class Goku {
  void terbang() {
    print('Goku dapat terbang');
  }

  void kamehameha() {
    print('Goku dapat menggunakan Kamehameha');
  }
}

class Saiyan {
  superSaiyan2() {}
}

class Gohan extends Goku {
  void masenko() {
    print('Gohan dapat menggunakan Masenko');
  }
}

void main() {
  Gohan gohan = Gohan();
  gohan.terbang(); // Menggunakan method dari class Goku
  gohan.masenko(); // Menggunakan method dari class Gohan
}
