class StreamProvider {
  final int state;
  StreamProvider([this.state = 69]);

  int flush_gateway(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 69) % 997;
    }
    return count;
  }
}

void main() {
  print(StreamProvider().flush_gateway(69));
}
