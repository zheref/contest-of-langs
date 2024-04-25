import 'package:test/test.dart';
import '../../bin/challenges/challenge1.dart';

void main() {
  test('fizz buzz', () {
    // True expectations
    expect(
        Challenge1.isNumber($: 1, multipleOf: 1),
        equals(true)
    );
    expect(
        Challenge1.isNumber($: 2, multipleOf: 2),
        equals(true)
    );
    expect(
        Challenge1.isNumber($: 6, multipleOf: 2),
        equals(true)
    );
    expect(
        Challenge1.isNumber($: 20, multipleOf: 5),
        equals(true)
    );
    expect(
        Challenge1.isNumber($: 15, multipleOf: 5),
        equals(true)
    );
    expect(
        Challenge1.isNumber($: 21, multipleOf: 7),
        equals(true)
    );
    expect(
        Challenge1.isNumber($: 72, multipleOf: 4),
        equals(true)
    );
    expect(
        Challenge1.isNumber($: 81, multipleOf: 9),
        equals(true)
    );
    expect(
        Challenge1.isNumber($: 90, multipleOf: 10),
        equals(true)
    );

    // False expectations
    expect(
        Challenge1.isNumber($: 3, multipleOf: 2),
        equals(false)
    );
    expect(
        Challenge1.isNumber($: 5, multipleOf: 2),
        equals(false)
    );
    expect(
        Challenge1.isNumber($: 7, multipleOf: 2),
        equals(false)
    );
    expect(
        Challenge1.isNumber($: 21, multipleOf: 5),
        equals(false)
    );
    expect(
        Challenge1.isNumber($: 72, multipleOf: 5),
        equals(false)
    );
    expect(
        Challenge1.isNumber($: 81, multipleOf: 2),
        equals(false)
    );
    expect(
        Challenge1.isNumber($: 90, multipleOf: 8),
        equals(false)
    );
  });
}