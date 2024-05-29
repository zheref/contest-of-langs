namespace TestOfSharp.Challenges;

using static ContestOfSharp.Challenges.Challenge10;

[TestClass]
public class Challenge10Tests
{
    [TestMethod]
    public void TestTransformToMorse_WithNormalString()
    {
        var result = ToMorse("hello");
        var expected = ".... . .—.. .—.. ———";
        Assert.AreEqual(expected, result);
    }
    
    [TestMethod]
    public void TestTransformToMorse_WithEmptyString()
    {
        var result = ToMorse("");
        var expected = "";
        Assert.AreEqual(expected, result);
    }

    [TestMethod]
    public void TestTransformToMorse_WithNumbers()
    {
        var result = ToMorse("123");
        var expected = ".———— ..——— ...——";
        Assert.AreEqual(expected, result);
    }
    
    [TestMethod]
    public void TestTransformToMorse_WithSpecialCharacters()
    {
        var result = ToMorse("hello!");
        var expected = ".... . .—.. .—.. ——— —.—.——";
        Assert.AreEqual(expected, result);
    }
    
    [TestMethod]
    public void TestTransformToMorse_WithSpaces()
    {
        var result = ToMorse("hi there");
        var expected = ".... ..  — .... . .—. .";
        Assert.AreEqual(expected, result);
    }
    
    [TestMethod]
    public void TestTransformToNatural_WithNormalString()
    {
        var result = ToNatural(".... . .—.. .—.. ———");
        var expected = "HELLO";
        Assert.AreEqual(expected, result);
    }
    
    [TestMethod]
    public void TestTransformToNatural_WithEmptyString()
    {
        var result = ToNatural("");
        var expected = "";
        Assert.AreEqual(expected, result);
    }
    
    [TestMethod]
    public void TestTransformToNatural_WithNumbers()
    {
        var result = ToNatural(".———— ..——— ...——");
        var expected = "123";
        Assert.AreEqual(expected, result);
    }
    
    [TestMethod]
    public void TestTransformToNatural_WithSpecialCharacters()
    {
        var result = ToNatural(".... . .—.. .—.. ——— —.—.——");
        var expected = "HELLO!";
        Assert.AreEqual(expected, result);
    }
    
    [TestMethod]
    public void TestTransformToNatural_WithSpaces()
    {
        var result = ToNatural(".... ..  — .... . .—. .");
        var expected = "HI THERE";
        Assert.AreEqual(expected, result);
    }
}