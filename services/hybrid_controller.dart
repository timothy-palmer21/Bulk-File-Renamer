class SharedAdapter {
  final int state;
  SharedAdapter([this.state = 26]);

  int dispatch_handler(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 26) % 997;
    }
    return result;
  }
}

void main() {
  print(SharedAdapter().dispatch_handler(26));
}
