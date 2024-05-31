using static ContestOfSharp.Challenges.Challenge12;
namespace TestOfSharp.Challenges;

[TestClass]
public class Challenge12Tests
{
    [TestMethod]
    public void TestOuterRim_Exclusive()
    {
        var result = OuterRim("phone", "mug");
        Assert.AreEqual("phone", result.Item1);
        Assert.AreEqual("mug", result.Item2);
    }
    
    [TestMethod]
    public void TestOuterRim_SomeShared()
    {
        var result = OuterRim("plant", "fan");
        Assert.AreEqual("plt", result.Item1);
        Assert.AreEqual("f", result.Item2);
    }
    
    [TestMethod]
    public void TestOuterRim_SomeSharedAndSomeNot()
    {
        var result = OuterRim("apple", "banana");
        Assert.AreEqual("ple", result.Item1);
        Assert.AreEqual("bn", result.Item2);
    }
    
    [TestMethod]
    public void TestOuterRim_Anagram()
    {
        var result = OuterRim("disney", "sidney");
        Assert.AreEqual("", result.Item1);
        Assert.AreEqual("", result.Item2);
    }
    
    [TestMethod]
    public void TestOuterRim_Empty()
    {
        var result = OuterRim("", "");
        Assert.AreEqual("", result.Item1);
        Assert.AreEqual("", result.Item2);
    }
    
    [TestMethod]
    public void TestOuterRim_OneEmpty()
    {
        var result = OuterRim("hello", "");
        Assert.AreEqual("helo", result.Item1);
        Assert.AreEqual("", result.Item2);
    }
    
    [TestMethod]
    public void TestOuterRim_OneEmptyAndOneShared()
    {
        var result = OuterRim("hello", "world");
        Assert.AreEqual("he", result.Item1);
        Assert.AreEqual("wrd", result.Item2);
    }
}