abstract class Bird{
  void move(){
    print("Bird is moving");
  }
}

mixin FlyingMixin on Bird{
  @override
  void move() {
    // TODO: implement move
    super.move();
    print("FlyingMixin bird is flying");
  }
}

mixin WalkingMixin on Bird{
  @override
  void move() {
    // TODO: implement move
    super.move();
    print("WalkingMixin Bird is walking");
  }
}