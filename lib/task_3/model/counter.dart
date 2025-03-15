import 'dart:async';

class Counter {
  int _count;

  // Правильно ли я понимаю, что если мы создаем контроллер и не указываем broadcast, то этот контроллер будет ожидать 1 подписчика, если указываем broadcast, то их может быть несколько, все верно?
  final _controller = StreamController<int>;

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
