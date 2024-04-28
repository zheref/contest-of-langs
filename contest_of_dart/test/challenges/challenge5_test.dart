import 'dart:math';

import 'package:test/test.dart';
import '../../bin/challenges/challenge5.dart';

void main() {
  test("Challenge 5: Triangles", () {
    final triangle1 = Triangle(20, 20);
    expect(triangle1.getArea(), equals(200));
    expect(triangle1.isEquilateral, equals(true));
    expect(triangle1.isRectangular, equals(false));
    expect(triangle1.isIsosceles, equals(true));

    final triangle2 = Triangle(30, 30, 90);
    expect(triangle2.getArea(), equals(450));
    expect(triangle2.isEquilateral, equals(false));
    expect(triangle2.isIsosceles, equals(false));
    expect(triangle2.isRectangular, equals(true));

    final triangle3 = Triangle(30, 20, 30);
    expect(triangle3.getArea(), equals(300));
    expect(triangle3.isEquilateral, equals(false));
    expect(triangle3.isRectangular, equals(false));
    expect(triangle3.isIsosceles, equals(false));
  });

  test("Challenge 5: Rectangles", () {
    final rectangle1 = Rectangle(30, 20);
    expect(rectangle1.getArea(), equals(600));
    expect(rectangle1.isEquilateral, equals(false));
    expect(rectangle1.isSquare, equals(false));

    final rectangle2 = Rectangle(30, 30);
    expect(rectangle2.getArea(), equals(900));
    expect(rectangle2.isEquilateral, equals(true));
    expect(rectangle2.isSquare, equals(true));
  });
}
