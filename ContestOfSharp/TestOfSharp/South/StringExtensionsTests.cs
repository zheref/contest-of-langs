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
}