namespace TestOfSharp.South;
using BankaiSouth;

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

    [TestMethod]
    public void TestIsEven()
    {
        Assert.IsTrue(2.IsEven());
        Assert.IsTrue(4.IsEven());
        Assert.IsTrue(6.IsEven());
        Assert.IsTrue(8.IsEven());
        Assert.IsTrue(10.IsEven());
        
        // Test Not Evens
        Assert.IsFalse(1.IsEven());
        Assert.IsFalse(3.IsEven());
        Assert.IsFalse(5.IsEven());
        Assert.IsFalse(7.IsEven());
        Assert.IsFalse(9.IsEven());
        
        // Test Big Numbers Both Evens and Not Evens
        Assert.IsTrue(100.IsEven());
        Assert.IsTrue(200.IsEven());
        Assert.IsTrue(300.IsEven());
        Assert.IsTrue(400.IsEven());
        
        // Test Big Uneven Values
        Assert.IsFalse(101.IsEven());
        Assert.IsFalse(201.IsEven());
        Assert.IsFalse(301.IsEven());
        Assert.IsFalse(401.IsEven());
        Assert.IsFalse(501.IsEven());
    }

    [TestMethod]
    public void TestIsOdd()
    {
        Assert.IsFalse(2.IsOdd());
        Assert.IsFalse(4.IsOdd());
        Assert.IsFalse(6.IsOdd());
        Assert.IsFalse(8.IsOdd());
        Assert.IsFalse(10.IsOdd());
        
        // Test Not Evens
        Assert.IsTrue(1.IsOdd());
        Assert.IsTrue(3.IsOdd());
        Assert.IsTrue(5.IsOdd());
        Assert.IsTrue(7.IsOdd());
        Assert.IsTrue(9.IsOdd());
        
        // Test Big Numbers Both Evens and Not Evens
        Assert.IsFalse(100.IsOdd());
        Assert.IsFalse(200.IsOdd());
        Assert.IsFalse(300.IsOdd());
        Assert.IsFalse(400.IsOdd());
        
        // Test Big Uneven Values
        Assert.IsTrue(101.IsOdd());
        Assert.IsTrue(201.IsOdd());
        Assert.IsTrue(301.IsOdd());
        Assert.IsTrue(401.IsOdd());
        Assert.IsTrue(501.IsOdd());
    }

    [TestMethod]
    public void TestAbs()
    {
        Assert.AreEqual(7, (-7).Abs());
        Assert.AreEqual(9, 9.Abs());
        Assert.AreEqual(101, 101.Abs());
        Assert.AreEqual(73, (-73).Abs());
    }

    [TestMethod]
    public void TestGreatestCommonDivisor()
    {
        Assert.AreEqual(5, 15.GreatestCommonDivisor(with: 5));
        Assert.AreEqual(1, 17.GreatestCommonDivisor(with: 4));
        Assert.AreEqual(20, 0.GreatestCommonDivisor(with: 20));
        Assert.AreEqual(34, 34.GreatestCommonDivisor(with: 0));
        Assert.AreEqual(0, 0.GreatestCommonDivisor(with: 0));
        Assert.AreEqual(5, (-10).GreatestCommonDivisor(with: 5));
        Assert.AreEqual(5, (-25).GreatestCommonDivisor(with: -5));
        Assert.AreEqual(6, 123456.GreatestCommonDivisor(with: 7890));
    }

    [TestMethod]
    public void TestToSystemBase()
    {
        Assert.AreEqual("1010", 10.ToSystemBase(2));
        Assert.AreEqual("0", 0.ToSystemBase(2));
        Assert.AreEqual("10000", 16.ToSystemBase(2));
        Assert.AreEqual("10010", 18.ToSystemBase(2));
        Assert.AreEqual("10001", 17.ToSystemBase(2));
        Assert.AreEqual("-1010", (-10).ToSystemBase(2));
        Assert.AreEqual("12", 10.ToSystemBase(8));
        Assert.AreEqual("0", 0.ToSystemBase(8));
        Assert.AreEqual("7", 7.ToSystemBase(8));
        Assert.AreEqual("144", 100.ToSystemBase(8));
        Assert.AreEqual("100", 64.ToSystemBase(8));
        Assert.AreEqual("-10", (-8).ToSystemBase(8));
        Assert.AreEqual("FF", 255.ToSystemBase(16));
        Assert.AreEqual("0", 0.ToSystemBase(16));
        Assert.AreEqual("AF", 175.ToSystemBase(16));
        Assert.AreEqual("3FF", 1023.ToSystemBase(16));
        Assert.AreEqual("100", 256.ToSystemBase(16));
        Assert.AreEqual("-FF", (-255).ToSystemBase(16));
        Assert.AreEqual("101", 10.ToSystemBase(3));
        Assert.AreEqual("0", 0.ToSystemBase(5));
        Assert.AreEqual("-1010", (-10).ToSystemBase(2));
        Assert.ThrowsException<ArgumentException>(() => 1.ToSystemBase(1));
        Assert.AreEqual("10000000000", 1024.ToSystemBase(2));
    }

    [TestMethod]
    public void TestDigitRepresentation()
    {
        Assert.AreEqual('A', 10.DigitRepresentation());
        Assert.AreEqual('B', 11.DigitRepresentation());
        Assert.AreEqual('C', 12.DigitRepresentation());
        Assert.AreEqual('D', 13.DigitRepresentation());
        Assert.AreEqual('E', 14.DigitRepresentation());
        Assert.AreEqual('F', 15.DigitRepresentation());
    }
    
}