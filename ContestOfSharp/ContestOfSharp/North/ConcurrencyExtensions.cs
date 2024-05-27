namespace ContestOfSharp.North;
using static System.Linq.Enumerable;
using BankaiSouth;

public static class ConcurrencyExtensions
{
    public static async IAsyncEnumerable<long> SecondsCount(this int self)
    {
        foreach (int second in Range(1, self))
        {
            yield return second;
            await Task.Delay(1.Seconds());
        }
    }
}