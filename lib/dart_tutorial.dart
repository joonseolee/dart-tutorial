import 'package:dart_tutorial/step_classes.dart';
//deferred as step_classes_namespace; // lazy loading
import 'package:dart_tutorial/step_operator.dart';
import 'package:dart_tutorial/variables.dart';
import 'package:dart_tutorial/built_in_types.dart';
import 'package:dart_tutorial/step_function.dart';

Future<void> main() async {
  var v = Variable('EE11');
  var v2 = BuiltInTypes();
  var v3 = StepFunction();
  var v4 = StepOperator();
  var v5 = StepClasses();

  v5.proceed();
}

class Spacecraft {
  String name;
  DateTime? launchDate;
  late String greeting;

  int? get launchYear => launchDate?.year;

  Spacecraft(this.name, this.launchDate) {}
  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft: $name');

    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched $launchYear');
    }
  }
}

class Orbiter extends Spacecraft with Piloted {
  double altitude;
  int astronauts = 5;

  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}
