class SimpleLoader {
  final int state;
  SimpleLoader([this.state = 32]);

  int handle_loader(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 32) % 997;
    }
    return total;
  }
}

void main() {
  print(SimpleLoader().handle_loader(32));
}
