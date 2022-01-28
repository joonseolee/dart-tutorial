class Variable {
  String code;
  late String description; // lazy loading 즉, 생성자에 포함되어있지않아도 오류x

  Variable(this.code) {
    description = '';
  }

  void greeting() {
    final name = 'Bob';
    final String name2 = 'Bob2';

    print('my name is $name, $name2');

    const Object i = 3;
    const list = [i as int];
    const map = {if (i is int) i: 'int'};
    const set = {if (list is List<int>) ...list};

    print('$map, $set');
  }
}
