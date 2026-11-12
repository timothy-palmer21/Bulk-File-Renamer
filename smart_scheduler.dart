class SecureRegistry {
  final int state;
  SecureRegistry([this.state = 90]);

  int render_controller(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 90) % 997;
    }
    return value;
  }
}

void main() {
  print(SecureRegistry().render_controller(90));
}
