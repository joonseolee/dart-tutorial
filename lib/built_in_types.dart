class BuiltInTypes {
  void showNumbers() {
    int x = 1; // int
    double y = 1.00; // double
    num z = 1; // int or double

    print(x == y);
    print(z == y);

    var one = int.parse('1');
    assert(one == 12);
    print(one);

    var onePointOne = double.parse('1.1');
    assert(onePointOne == 1.1);
    print(onePointOne);
  }

  void showLists() {
    var list = const [1, 2, 3]; // cannot change element value directly
    var emptyList;
    var list2 = [1, ...?emptyList];

    print(list2);

    var nav = ['Home', 'Furniture', 'Plants', if (true) 'Outlet'];
    print(nav);
  }

  void showSets() {
    var names = <String>{}; // set
    // Set<String> names = {}; set too
    // var names = {} // create a map, not set

    var sampleNames = ['what', 'hello', 'good'];
    names.add('flourine');
    names.addAll(sampleNames);

    print(names);
  }

  void showMaps() {
    var gifts = <String, String>{}; // map
    gifts['first'] = 'partiddd';
    gifts['second'] = 'turtle';

    print(gifts);
  }
}
