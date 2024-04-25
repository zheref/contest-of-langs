import 'package:args/args.dart';

import 'challenges/challenge1.dart';
import 'challenges/challenge3.dart';
import 'challenges/challenge4.dart';

void main(List<String> arguments) {
  print("Challenge 1: Fizz Buzz");
  Challenge1.perform();
  print("Challenge 3: Fibonacci Sequence");
  Challenge3.perform();
  print("Challenge 4: Prime Numbers");
  Challenge4.perform();
}
