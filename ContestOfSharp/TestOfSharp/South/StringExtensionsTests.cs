namespace TestOfSharp.South;
using ContestOfSharp.South;

[TestClass]
public class StringExtensionsTests
{
    [TestMethod]
    public void Test_IsStringAnagramOf()
    {
        Assert.IsTrue("listen".IsAnagramOf(word: "silent"));
        Assert.IsTrue("triangle".IsAnagramOf(word: "integral"));
        Assert.IsTrue("amor".IsAnagramOf(word: "roma"));
        Assert.IsTrue("sergio".IsAnagramOf(word: "riesgo"));
        Assert.IsTrue("delira".IsAnagramOf(word: "lidera"));
        Assert.IsTrue("ballena".IsAnagramOf(word: "llenaba"));
        Assert.IsTrue("valora".IsAnagramOf(word: "Alvaro"));
        Assert.IsTrue("PRAGA".IsAnagramOf(word: "pagar"));
        Assert.IsTrue("amor".IsAnagramOf(word: "amor"));

        Assert.IsFalse("edwin".IsAnagramOf(word: "winned"));
        Assert.IsFalse("obito".IsAnagramOf(word: "tobi"));
        Assert.IsFalse("sasuke".IsAnagramOf(word: "itachi"));
        Assert.IsFalse("maria".IsAnagramOf(word: "rima"));
        Assert.IsFalse("alborota".IsAnagramOf(word: "lobo rata"));
    }

    [TestMethod]
    public void Test_IsEmpty()
    {
        Assert.IsFalse("something".IsEmpty());
        Assert.IsTrue("".IsEmpty());
        Assert.IsTrue(" ".IsEmpty());
        Assert.IsFalse(" s ".IsEmpty());
    }

    [TestMethod]
    public void Test_Inverted()
    {
        Assert.AreEqual(expected: "olleH", actual: "Hello".Inverted());
        Assert.AreEqual(expected: "dlroW olleH", actual: "Hello World".Inverted());
        Assert.AreEqual(expected: "T", actual: "T".Inverted());
        Assert.AreEqual(expected: "", actual: "".Inverted());
        Assert.AreEqual(expected: "odnum aloH", actual: "Hola mundo".Inverted());
        Assert.AreEqual(expected: "citoxE", actual: "Exotic".Inverted());
        Assert.AreEqual(expected: "yxalaG", actual: "Galaxy".Inverted());
        Assert.AreEqual(expected: "faelonaN", actual: "Nanoleaf".Inverted());
        Assert.AreEqual(expected: "kayak", actual: "kayak".Inverted());
        Assert.AreEqual(expected: "deified", actual: "deified".Inverted());
    }
}