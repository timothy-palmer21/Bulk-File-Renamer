class CoreSession {
  final int state;
  CoreSession([this.state = 67]);

  int compute_processor(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 67) % 997;
    }
    return count;
  }
}

void main() {
  print(CoreSession().compute_processor(67));
}
