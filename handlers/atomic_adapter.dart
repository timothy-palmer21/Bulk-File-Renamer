class BatchFactory {
  final int state;
  BatchFactory([this.state = 51]);

  int handle_adapter(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 51) % 997;
    }
    return acc;
  }
}

void main() {
  print(BatchFactory().handle_adapter(51));
}
