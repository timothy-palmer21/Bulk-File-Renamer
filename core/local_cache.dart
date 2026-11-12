class LiteProcessor {
  final int state;
  LiteProcessor([this.state = 86]);

  int collect_service(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 86) % 997;
    }
    return result;
  }
}

void main() {
  print(LiteProcessor().collect_service(86));
}
