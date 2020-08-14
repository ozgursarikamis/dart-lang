void main() {
  MockSpaceship().sayMyName();
}

// Base class, will be used as Interface.
class SpaceCraft {
  void sayMyName() {
    print('Heisenberg');
  }
}

class MockSpaceship implements SpaceCraft {
  @override
  void sayMyName() {
    print('Skyler');
  }
}
