import 'package:flutter_home_work_5/task_3/model/counter.dart';

void main() async {
  Counter counter = Counter(2);

  counter.stream.listen((data) {
    print(data);
  }, onError: (error) => print(error));

  counter.decrement();
  counter.decrement();
  counter.decrement();
  counter.increment();
  counter.increment();

  counter.dispose();
}
