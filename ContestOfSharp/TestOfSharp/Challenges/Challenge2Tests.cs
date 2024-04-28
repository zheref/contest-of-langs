namespace TestOfSharp.Challenges;
using static ContestOfSharp.Challenges.Challenge2;

[TestClass]
public class Challenge2Tests
{
    [TestMethod]
    public void TestIsWordAnagramOf()
    {
        Assert.IsTrue(IsWord("listen", anagramOf: "silent"));
        Assert.IsTrue(IsWord("triangle", anagramOf: "integral"));
        Assert.IsTrue(IsWord("amor", anagramOf: "roma"));
        Assert.IsTrue(IsWord("sergio", anagramOf: "riesgo"));
        Assert.IsTrue(IsWord("delira", anagramOf: "lidera"));
        Assert.IsTrue(IsWord("ballena", anagramOf: "llenaba"));
        Assert.IsTrue(IsWord("valora", anagramOf: "Alvaro"));
        Assert.IsTrue(IsWord("PRAGA", anagramOf: "pagar"));
        
        Assert.IsFalse(IsWord("amor", anagramOf: "amor"));
        Assert.IsFalse(IsWord("edwin", anagramOf: "winned"));
        Assert.IsFalse(IsWord("obito", anagramOf: "tobi"));
        Assert.IsFalse(IsWord("sasuke", anagramOf: "itachi"));
        Assert.IsFalse(IsWord("maria", anagramOf: "rima"));
        Assert.IsFalse(IsWord("alborota", anagramOf: "lobo rata"));
    }
}