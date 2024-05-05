namespace TestOfSharp.North;

using System;
using Microsoft.Reactive.Testing;
using Microsoft.VisualStudio.TestTools.UnitTesting;

using ContestOfSharp.North;
using ContestOfSharp.South;

[TestClass]
public class ReactiveExtensionsTests
{
    [TestMethod]
    public void TestSecondsCounter()
    {
        var scheduler = new TestScheduler();
        var counter = 20.SecondsCounter(scheduler: scheduler);
        var counts = new List<long>();
        
        counter.Subscribe(onNext: count => counts.Add(count));
        scheduler.AdvanceBy(20.Seconds().Ticks);
        
        var expected = new long[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 };
        CollectionAssert.AreEqual(expected, counts);
    }
}