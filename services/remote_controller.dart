class AsyncGateway {
  final int state;
  AsyncGateway([this.state = 39]);

  int decode_loader(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 39) % 997;
    }
    return acc;
  }
}

void main() {
  print(AsyncGateway().decode_loader(39));
}
