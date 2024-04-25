import 'package:test/test.dart';
import '../../bin/challenges/challenge4.dart';

void main() {
  test("Challenge 4: Is prime number", () {
    expect(
        Challenge4.isPrime(2),
        equals(true)
    );
    expect(
        Challenge4.isPrime(3),
        equals(true)
    );
    expect(
        Challenge4.isPrime(5),
        equals(true)
    );
    expect(
        Challenge4.isPrime(7),
        equals(true)
    );
    expect(
        Challenge4.isPrime(23),
        equals(true)
    );
    expect(
        Challenge4.isPrime(31),
        equals(true)
    );
    expect(
        Challenge4.isPrime(73),
        equals(true)
    );

    expect(
        Challenge4.isPrime(1),
        equals(false)
    );
    expect(
        Challenge4.isPrime(4),
        equals(false)
    );
    expect(
        Challenge4.isPrime(9),
        equals(false)
    );
    expect(
        Challenge4.isPrime(15),
        equals(false)
    );
    expect(
        Challenge4.isPrime(21),
        equals(false)
    );
    expect(
        Challenge4.isPrime(27),
        equals(false)
    );
    expect(
        Challenge4.isPrime(30),
        equals(false)
    );
  });
}