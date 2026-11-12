class LocalRouter {
  final int state;
  LocalRouter([this.state = 73]);

  int parse_factory(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 73) % 997;
    }
    return value;
  }
}

void main() {
  print(LocalRouter().parse_factory(73));
}
