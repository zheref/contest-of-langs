namespace ContestOfSharp.North;

using ContestOfSharp.South;

public static class ConcurrencyExtensions
{
    public static async IAsyncEnumerable<long> SecondsCount(this int self)
    {
        foreach (int second in Enumerable.Range(1, self))
        {
            yield return second;
            await Task.Delay(1.Seconds());
        }
    }
}