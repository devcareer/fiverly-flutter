abstract class CheckRepository {
  bool checkValue(bool value);
}

class Check extends CheckRepository {
  bool check_value = false;
  checkValue(value) {
    print("$value is repo");
    check_value = value;
    return value;
  }

  final reviews = List.generate(8, (index) => index);
}
