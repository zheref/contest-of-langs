// See https://aka.ms/new-console-template for more information

using ContestOfSharp.Challenges;

Console.WriteLine("Challenge 0: Seconds Counter");
Challenge0.CountSeconds_Reactively();
// await Task.Delay(61.Seconds()); // Await below does the job to wait for reactive one to complete
await Challenge0.CountSeconds_Concurrently();

Console.WriteLine("Challenge 1: Fizz Buzz");
Challenge1.Perform();

Console.WriteLine("Challenge 3: Fibonacci");
Challenge3.Perform();

Console.WriteLine("Challenge 4: Prime Numbers");
Challenge4.Perform();