void main(List<String> arguments) {
  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.parse(s, (e) => null) != null;
  }

  void cek_kata(dynamic kata) {
    var test = kata;
    if (test.runtimeType == String) {
      var aray = (test).split(" ");
      int a = 0;
      int b = 0;

      (aray as List).forEach((f) {
        b++;
        if (!isNumeric(f)) {
          a++;
        }
      });
      print('$a/$b');
    } else {
      print('Parameter harus string!');
    }
  }

  cek_kata('ini adalah sebuah kata');
  cek_kata('2 pasang sandal hilang');
  cek_kata(33);
}
