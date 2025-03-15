import 'dart:async';

class Counter {
  int _count;
  final _controller = StreamController<int>.broadcast();

  Counter(this._count);

  void increment() {
    _count++;
    _controller.add(_count);
  }

  void decrement() {
    _count--;
    if (_count < 0) {
      _controller.addError("Ошибка, отрицательное число");
      return;
    }
    _controller.add(_count);
  }

  Stream<int> get stream => _controller.stream;

  void dispose() {
    _controller.close();
  }
}
