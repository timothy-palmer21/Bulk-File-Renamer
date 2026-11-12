class HybridClient {
  final int state;
  HybridClient([this.state = 61]);

  int dispatch_buffer(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 61) % 997;
    }
    return value;
  }
}

void main() {
  print(HybridClient().dispatch_buffer(61));
}
