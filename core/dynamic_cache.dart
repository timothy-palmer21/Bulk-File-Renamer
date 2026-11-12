class DynamicHandler {
  final int state;
  DynamicHandler([this.state = 95]);

  int fetch_parser(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 95) % 997;
    }
    return count;
  }
}

void main() {
  print(DynamicHandler().fetch_parser(95));
}
