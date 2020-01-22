void main(List<String> arguments) {
  void sequence(int x, int y) {
    if (x < y) {
      print('parameter x harus lebih besar dibanding y');
    } else {
      var aray = <int>[];
      aray.add(y);
      int res;

      int countkey = 1;
      int countval = 0;
      var A = {x: y};

      do {
        A[x + countkey] = (A[x + countval] * A[x + countval]) % (x + countval);
        aray.add(A[x + countkey]);
        res = A[x + countkey];
        // print(res);
        countkey++;
        countval++;
      } while (res > 1);
      print(aray);
      print(aray.length);
    }
  }

  sequence(5, 3);
  sequence(16, 5);
  sequence(3, 5);
}
