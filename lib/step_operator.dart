class StepOperator {
  void proceed() {
    var paint = Paint()
      ..name = 'd'
      ..address = 'vvvv';

    paint.address = 'd';

    var something = ImmutablePoint(3, 4);
    something.printSomething();

    // 만약 좌변이 null 일경우에는 첫번째 초기화할때 ?.. 넣어주면 다음스텝에도 적용됨.
    var nullPaint = generatePaintInstance()
      ?..name = 'name'
      ..address = 'tong';

    try {
      throwAnException();
    } on TypeError {
      print('here is the first step catch.');
    } on Exception catch (e) {
      print('here is the second step catch -> $e');
    } catch (e) {
      print('and last step catch. $e');
      // rethrow;
    }
  }

  Paint? generatePaintInstance() {
    return null;
  }

  String throwAnException() {
    // run through the last catch
    throw OutOfMemoryError();
  }
}

class Paint {
  late String name;
  late String address;

  @override
  String toString() {
    return 'name=$name,address=$address';
  }
}

class ImmutablePoint {
  final double x, y;

  ImmutablePoint(this.x, this.y);

  void printSomething() {
    print('x=$x, y=$y');
  }
}
