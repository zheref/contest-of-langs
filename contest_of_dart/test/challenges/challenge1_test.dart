import 'package:test/test.dart';
import '../../bin/challenges/challenge1.dart';

void main() {
  test('fizz buzz', () {
    // True expectations
    expect(isNumber($: 1, multipleOf: 1), equals(true));
    expect(isNumber($: 2, multipleOf: 2), equals(true));
    expect(isNumber($: 6, multipleOf: 2), equals(true));
    expect(isNumber($: 20, multipleOf: 5), equals(true));
    expect(isNumber($: 15, multipleOf: 5), equals(true));
    expect(isNumber($: 21, multipleOf: 7), equals(true));
    expect(isNumber($: 72, multipleOf: 4), equals(true));
    expect(isNumber($: 81, multipleOf: 9), equals(true));
    expect(isNumber($: 90, multipleOf: 10), equals(true));

    // False expectations
    expect(isNumber($: 3, multipleOf: 2), equals(false));
    expect(isNumber($: 5, multipleOf: 2), equals(false));
    expect(isNumber($: 7, multipleOf: 2), equals(false));
    expect(isNumber($: 21, multipleOf: 5), equals(false));
    expect(isNumber($: 72, multipleOf: 5), equals(false));
    expect(isNumber($: 81, multipleOf: 2), equals(false));
    expect(isNumber($: 90, multipleOf: 8), equals(false));
  });
}
