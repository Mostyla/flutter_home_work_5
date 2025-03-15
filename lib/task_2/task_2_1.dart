void main() async {
  fetchData().then((e) => print(e));
}

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => "Данные загружены");
}
