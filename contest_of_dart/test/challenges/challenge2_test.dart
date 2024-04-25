import 'package:test/test.dart';
import '../../bin/challenges/challenge2.dart';

void main() {
  test('is anagram of', () {
    expect(
      isWord($: "listen", anagramOf: "silent"),
      equals(true)
    );
    expect(
        isWord($: "triangle", anagramOf: "integral"),
        equals(true)
    );
    expect(
        isWord($: "amor", anagramOf: "roma"),
        equals(true)
    );
    expect(
        isWord($: "sergio", anagramOf: "riesgo"),
        equals(true)
    );
    expect(
        isWord($: "delira", anagramOf: "lidera"),
        equals(true)
    );
    expect(
        isWord($: "ballena", anagramOf: "llenaba"),
        equals(true)
    );
    expect(
        isWord($: "valora", anagramOf: "Alvaro"),
        equals(true)
    );
    expect(
        isWord($: "PRAGA", anagramOf: "pagar"),
        equals(true)
    );

    expect(
        isWord($: "amor", anagramOf: "amor"),
        equals(false)
    );
    expect(
        isWord($: "edwin", anagramOf: "winned"),
        equals(false)
    );
    expect(
        isWord($: "obito", anagramOf: "tobi"),
        equals(false)
    );
    expect(
        isWord($: "sasuke", anagramOf: "itachi"),
        equals(false)
    );
    expect(
        isWord($: "maria", anagramOf: "rima"),
        equals(false)
    );
    expect(
        isWord($: "alborota", anagramOf: "lobo rata"),
        equals(false)
    );
  });
}