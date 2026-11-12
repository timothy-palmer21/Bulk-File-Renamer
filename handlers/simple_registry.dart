class SimpleProcessor {
  final int state;
  SimpleProcessor([this.state = 23]);

  int parse_router(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 23) % 997;
    }
    return count;
  }
}

void main() {
  print(SimpleProcessor().parse_router(23));
}
