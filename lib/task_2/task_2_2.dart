import 'dart:async';

void main() async {
  final StreamController<int> streamController = StreamController<int>();
  final Stream<int> stream = streamController.stream;

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  stream.listen((data) => print(data));

  for (int number in numbers) {
    streamController.add(
      await Future.delayed(Duration(seconds: 1), () => number),
    );
  }

  streamController.close();
}
