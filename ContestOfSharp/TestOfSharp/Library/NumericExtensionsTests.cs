namespace TestOfSharp.Library;
using ContestOfSharp.South;

[TestClass]
public class NumericExtensionsTests
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
    
    [TestMethod]
    public void TestFibonaccis()
    {
        Assert.IsNull((-1).Fibonaccis());
        
        Assert.IsTrue(
            0.Fibonaccis()!.SequenceEqual(new long[] {})
        );
        
        Assert.IsTrue(
            1.Fibonaccis()!.SequenceEqual(new long[] { 0 })
        );
        
        Assert.IsTrue(
            2.Fibonaccis()!.SequenceEqual(new long[] { 0, 1 })
        );

        var fiftyFibonaccis = 50.Fibonaccis()!;
        Assert.AreEqual(50, fiftyFibonaccis.Count());
        Assert.IsTrue(
            fiftyFibonaccis.SequenceEqual(
                new[]
                {
                    0, 1, 1, 2, 3, 5, 8, 13, 21, 34,
                    55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181,
                    6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229,
                    832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169,
                    63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170,
                    1836311903, 2971215073, 4807526976, 7778742049
                }
            )
        );
    }
    
    [TestMethod]
    public void TestIsPrime()
    {
        Assert.IsTrue(2.IsPrime());
        Assert.IsTrue(3.IsPrime());
        Assert.IsTrue(5.IsPrime());
        Assert.IsTrue(7.IsPrime());
        Assert.IsTrue(23.IsPrime());
        Assert.IsTrue(31.IsPrime());
        Assert.IsTrue(73.IsPrime());

        Assert.IsFalse(1.IsPrime());
        Assert.IsFalse(4.IsPrime());
        Assert.IsFalse(9.IsPrime());
        Assert.IsFalse(15.IsPrime());
        Assert.IsFalse(21.IsPrime());
        Assert.IsFalse(27.IsPrime());
        Assert.IsFalse(30.IsPrime());
    }
}