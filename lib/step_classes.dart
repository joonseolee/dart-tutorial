import 'todo.dart';

class StepClasses {
  void proceed() {
    var namedProfile = ProfileMark('joon');
    var unnamedProfile = ProfileMark.unnamed();
    var unnamedProfileTwo = ProfileMark.unnamed();
    var factoryProfile = ProfileMark.fromString('factory');
    var factoryProfileTwo = ProfileMark.fromString('factory');

    namedProfile.printName();
    unnamedProfile.printName();
    factoryProfile.printName();

    var check = !identical(unnamedProfile, unnamedProfileTwo);
    print('unnamedProfile and unnamedProfileTwo is identical $check');
    var check2 = !identical(factoryProfile, factoryProfileTwo);
    print('unnamedProfile and unnamedProfileTwo is identical $check2');

    var person = Person('jj');
    String greetBob(Person someone) => someone.greet('Bob');
    print(greetBob(person));
    var impostor = Impostor();
    print(impostor.greet('kkk'));

    print('--------');

    var rect = Rectangle(3, 4, 5, 6);
    if (rect.left == 3) {
      print('rect left is 3');
    }
  }
}

class ProfileMark {
  final String name;
  final DateTime start = DateTime.now();

  ProfileMark(this.name);
  ProfileMark.unnamed() : name = '';
  factory ProfileMark.fromString(String value) {
    return ProfileMark(value);
  }

  @Todo('seth', 'make this do something')
  void printName() {
    print('name: $name');
  }
}

// interface
class Person {
  final String _name;

  Person(this._name);

  @Deprecated('제발 쓰지좀말아봐....')
  String greet(String who) => 'Hello $who~ I am $_name ^^';
}

class Impostor implements Person {
  @override
  String get _name => 'Hello somebody';

  @override
  String greet(String who) {
    return '$who are you...?';
  }
}

// Getters and Setters
class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}
