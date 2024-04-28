using static ContestOfSharp.Challenges.Challenge4;

namespace TestOfSharp.Challenges;

[TestClass]
public class Challenge4Tests
{
    [TestMethod]
    public void TestIsPrime()
    {
        Assert.IsTrue(IsPrime(number: 2));
        Assert.IsTrue(IsPrime(number: 3));
        Assert.IsTrue(IsPrime(number: 5));
        Assert.IsTrue(IsPrime(number: 7));
        Assert.IsTrue(IsPrime(number: 23));
        Assert.IsTrue(IsPrime(number: 31));
        Assert.IsTrue(IsPrime(number: 73));
        
        Assert.IsFalse(IsPrime(number: 1));
        Assert.IsFalse(IsPrime(number: 4));
        Assert.IsFalse(IsPrime(number: 9));
        Assert.IsFalse(IsPrime(number: 15));
        Assert.IsFalse(IsPrime(number: 21));
        Assert.IsFalse(IsPrime(number: 27));
        Assert.IsFalse(IsPrime(number: 30));
    }
}