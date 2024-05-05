using System.Reactive.Concurrency;
using ContestOfSharp.North;

namespace ContestOfSharp.Challenges;

public abstract class Challenge0
{
    public static void CountSeconds_Reactively()
    {
        60.SecondsCounter(TaskPoolScheduler.Default)
            .Subscribe(second =>
                Console.WriteLine($"Reactive Timer Ticked: {second}")
            );
    }

    public static async Task CountSeconds_Concurrently()
    {
        await foreach (int second in 60.SecondsCount())
            Console.WriteLine($"Concurrent Timer Ticked: {second}");
    }
}