namespace TestOfSharp.Challenges;

using static ContestOfSharp.Challenges.Challenge6;

[TestClass]
public class Challenge6Tests
{
    private static readonly Uri ValidImageUrl1 = new Uri("https://picsum.photos/300/200"); // 3:2
    private static readonly Uri ValidImageUrl2 = new Uri("https://picsum.photos/640/480"); // 4:3
    private static readonly Uri ValidImageUrl3 = new Uri("https://picsum.photos/1920/1080"); // 16:9
    private static readonly Uri NotFoundImageUrl = new Uri("https://picsum.photos/notfound"); // Not Found!
    private static readonly Uri InvalidImageUrl = new Uri("https://picsum.never/never"); // THROWS!
    
    [TestMethod]
    public async Task TestCalculateAspectRatioOfImageFrom()
    {
        var aspectRatio1 = await CalculateAspectRatioOfImageFrom(ValidImageUrl1);
        Assert.AreEqual(3, aspectRatio1.Item1);
        Assert.AreEqual(2, aspectRatio1.Item2);
        
        var aspectRatio2 = await CalculateAspectRatioOfImageFrom(ValidImageUrl2);
        Assert.AreEqual(4, aspectRatio2.Item1);
        Assert.AreEqual(3, aspectRatio2.Item2);
        
        var aspectRatio3 = await CalculateAspectRatioOfImageFrom(ValidImageUrl3);
        Assert.AreEqual(16, aspectRatio3.Item1);
        Assert.AreEqual(9, aspectRatio3.Item2);
        
        await Assert.ThrowsExceptionAsync<HttpRequestException>(() => CalculateAspectRatioOfImageFrom(NotFoundImageUrl));
        await Assert.ThrowsExceptionAsync<HttpRequestException>(() => CalculateAspectRatioOfImageFrom(InvalidImageUrl));
    }
}