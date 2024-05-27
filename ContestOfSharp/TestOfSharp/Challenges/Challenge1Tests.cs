namespace TestOfSharp.Challenges;
// using static ContestOfSharp.Challenges.Challenge1;
using BankaiSouth;

[TestClass]
public class Challenge1Tests
{
    [TestMethod]
    public void TestIsNumberMultipleOf()
    {
        Assert.IsTrue(1.IsMultipleOf(number: 1));
        Assert.IsTrue(2.IsMultipleOf(number: 2));
        Assert.IsTrue(6.IsMultipleOf(number: 2));
        Assert.IsTrue(20.IsMultipleOf(number: 5));
        Assert.IsTrue(15.IsMultipleOf(number: 5));
        Assert.IsTrue(21.IsMultipleOf(number: 7));
        Assert.IsTrue(72.IsMultipleOf(number: 4));
        Assert.IsTrue(81.IsMultipleOf(number: 9));
        Assert.IsTrue(90.IsMultipleOf(number: 9));
        
        Assert.IsFalse(3.IsMultipleOf(number: 2));
        Assert.IsFalse(5.IsMultipleOf(number: 2));
        Assert.IsFalse(7.IsMultipleOf(number: 2));
        Assert.IsFalse(21.IsMultipleOf(number: 5));
        Assert.IsFalse(72.IsMultipleOf(number: 5));
        Assert.IsFalse(81.IsMultipleOf(number: 2));
        Assert.IsFalse(90.IsMultipleOf(number: 8));
    }
}