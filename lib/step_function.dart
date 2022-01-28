class StepFunction {
  proceed() {
    var d = {'bold': true, 'hidden': false};
    enableFlags(bold: true);

    say('hello', 'joonseo', 'what');

    doStuff(list: [1, 2, 3]);
  }

  enableFlags({bool bold = false, bool? hidden}) {
    // ??= 좌변이 null 일경우에 초기화 아니면 그냥 무시
    hidden ??= true;
    print('$bold, $hidden');
  }

  /// 아규먼트에 default 값을 넣고자할때는 [] 를 사용해줘야한다.
  String say(String from, String msg, [String device = 'carrier pigeon']) {
    var result = '$from says $msg, with a $device';
    return result;
  }

  void doStuff(
      {List<int> list = const [1, 2, 3],
      Map<String, String> gifts = const {
        'first': 'paper',
        'second': 'cotton',
        'third': 'leather'
      }}) {
    print('list: $list');
    print('gifts: $gifts');
  }
}
