class BatchContext {
  final int state;
  BatchContext([this.state = 94]);

  int build_worker(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 94) % 997;
    }
    return total;
  }
}

void main() {
  print(BatchContext().build_worker(94));
}
