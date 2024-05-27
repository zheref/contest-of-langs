using BankaiSouth;

namespace TestOfSharp.Challenges;

using static ContestOfSharp.Challenges.Challenge8;

[TestClass]
public class Challenge8Tests
{
    [TestMethod]
    public void TestCountInstances_WithMultipleOccurrences()
    {
        const string text = "apple banana Apple orange aPPle grape";
        var count = CountInstancesOf(word: "apple", inText: text);
        Assert.AreEqual(expected: 3, actual: count);
    }
    
    [TestMethod]
    public void TestCountInstances_WithNoOccurrences()
    {
        const string text = "apple banana Apple orange aPPle grape";
        var count = CountInstancesOf(word: "pear", inText: text);
        Assert.AreEqual(expected: 0, actual: count);
    }
    
    [TestMethod]
    public void TestCountInstances_WithEmptyText()
    {
        const string text = "";
        var count = CountInstancesOf(word: "apple", inText: text);
        Assert.AreEqual(expected: 0, actual: count);
    }
    
    [TestMethod]
    public void TestCountInstances_WithEmptyWord()
    {
        const string text = "apple banana Apple orange aPPle grape";
        var count = CountInstancesOf(word: "", inText: text);
        Assert.AreEqual(expected: 0, actual: count);
    }
    
    [TestMethod]
    public void TestCountInstances_WithEmptyTextAndWord()
    {
        const string text = "";
        var count = CountInstancesOf(word: "", inText: text);
        Assert.AreEqual(expected: 0, actual: count);
    }
    
    [TestMethod]
    public void TestCountInstances_WithSpecialCharacters()
    {
        const string text = "apple! banana? Apple! orange. grape";
        var count = CountInstancesOf(word: "apple", inText: text);
        Assert.AreEqual(expected: 2, actual: count);
    }

    [TestMethod]
    public void TestCountWordsIn_BasicFunctionality()
    {
        const string text = "Hello, hello? HELLO! Are there, are there any echoes?";
        CollectionAssert.AreEqual(
            expected: new Dictionary<string, int>
            {
                ["hello"] = 3, ["are"] = 2, ["there"] = 2, ["any"] = 1, ["echoes"] = 1
            },
            actual: CountWordsIn(text)
        );
    }
    
    [TestMethod]
    public void TestCountWordsIn_EmptyText()
    {
        CollectionAssert.AreEqual(
            expected: new Dictionary<string, int>(),
            actual: CountWordsIn("")
        );
    }
    
    [TestMethod]
    public void TestCountWordsIn_CaseInsensitivity()
    {
        CollectionAssert.AreEqual(
            expected: new Dictionary<string, int> { ["swift"] = 3 },
            actual: CountWordsIn("Swift, swift, SWIFT!")
        );
    }

    [TestMethod]
    public void TestCountWordsIn_IgnorePunctuation()
    {
        CollectionAssert.AreEqual(
            expected: new Dictionary<string, int> { ["well"] = 4 },
            actual: CountWordsIn("Well... well, well; well!")
        );
    }
    
    // create case for "Testing 123, testing 123! Does it count 123? Yes, it counts!"
    [TestMethod]
    public void TestCountWordsIn_WithNumbers()
    {
        var result = CountWordsIn("Testing 123, testing 123! Does it count 123? Yes, it counts!");
        CollectionAssert.AreEqual(
            expected: new Dictionary<string, int> { ["testing"] = 2, ["does"] = 1, ["it"] = 2, ["count"] = 1, ["yes"] = 1, ["counts"] = 1 },
            actual: result
        );
    }
}