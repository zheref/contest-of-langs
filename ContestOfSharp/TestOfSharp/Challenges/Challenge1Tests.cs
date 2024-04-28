namespace TestOfSharp.Challenges;
using static ContestOfSharp.Challenges.Challenge1;

[TestClass]
public class Challenge1Tests
{
    [TestMethod]
    public void TestIsNumberMultipleOf()
    {
        Assert.IsTrue(IsNumber(1, multipleOf: 1));
        Assert.IsTrue(IsNumber(2, multipleOf: 2));
        Assert.IsTrue(IsNumber(6, multipleOf: 2));
        Assert.IsTrue(IsNumber(20, multipleOf: 5));
        Assert.IsTrue(IsNumber(15, multipleOf: 5));
        Assert.IsTrue(IsNumber(21, multipleOf: 7));
        Assert.IsTrue(IsNumber(72, multipleOf: 4));
        Assert.IsTrue(IsNumber(81, multipleOf: 9));
        Assert.IsTrue(IsNumber(90, multipleOf: 10));
        
        Assert.IsFalse(IsNumber(3, multipleOf: 2));
        Assert.IsFalse(IsNumber(5, multipleOf: 2));
        Assert.IsFalse(IsNumber(7, multipleOf: 2));
        Assert.IsFalse(IsNumber(21, multipleOf: 5));
        Assert.IsFalse(IsNumber(72, multipleOf: 5));
        Assert.IsFalse(IsNumber(81, multipleOf: 2));
        Assert.IsFalse(IsNumber(90, multipleOf: 8));
    }
}