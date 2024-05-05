using ContestOfSharp.North;

namespace TestOfSharp.North;

[TestClass]
public class ConcurrencyExtensionsTests
{
    [TestMethod]
    public async Task TestSecondsCount()
    {
        var counts = new List<long>();
        
        await foreach (int second in 20.SecondsCount())
        {
            counts.Add(second);
        }
        
        var expected = new long[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 };
        CollectionAssert.AreEqual(expected, counts);
    }
}