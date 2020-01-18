void main(List<String> arguments) {
  void cetak_gambar(int val) {
    if (val == 1 || val % 2 == 0) {
      print('Parameter harus angka dan ganjil!');
    } else {
      print('---  Panjang  ---');
      String sym = '';
      var mid = (val / 2).floor();
      for (var i = 0; i < val; i++) {
        if (i == mid) {
          for (var j = 0; j < val; j++) {
            sym += '* ';
          }
        } else {
          for (var j = 0; j < val; j++) {
            if (j == 0 || j == val - 1) {
              sym += '* ';
            } else {
              sym += '= ';
            }
          }
        }

        sym += '\n';
      }
      print(sym);
    }
  }

  cetak_gambar(5);
}
