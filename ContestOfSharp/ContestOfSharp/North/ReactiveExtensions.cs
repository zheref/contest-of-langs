namespace ContestOfSharp.North;

using System.Reactive.Concurrency;
using System.Reactive.Linq;

using ContestOfSharp.South;

public static class ReactiveExtensions
{
    public static IObservable<long> SecondsCounter(this int self, IScheduler scheduler)
    {
        return Observable.Interval(
            period: 1.Seconds(), 
            scheduler: scheduler
        )
        .Select(c => c + 1)
        .Take(self);
    }
}