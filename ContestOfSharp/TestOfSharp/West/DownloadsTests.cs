namespace TestOfSharp.West;

using System;
using ContestOfSharp.West;

[TestClass]
public class DownloadsTests
{
    private static readonly Uri ValidImageUrl1 = new Uri("https://picsum.photos/300/200"); // 3:2
    private static readonly Uri ValidImageUrl2 = new Uri("https://picsum.photos/640/480"); // 4:3
    private static readonly Uri ValidImageUrl3 = new Uri("https://picsum.photos/1920/1080"); // 16:9
    private static readonly Uri NotFoundImageUrl = new Uri("https://picsum.photos/notfound"); // Not Found!
    private static readonly Uri InvalidImageUrl = new Uri("https://picsum.never/never"); // THROWS!
    
    [TestMethod]
    public async Task TestDownloaded()
    {
        var imageData1 = await ValidImageUrl1.Downloaded();
        Assert.IsTrue(imageData1.Length > 0);

        var imageData2 = await ValidImageUrl2.Downloaded();
        Assert.IsTrue(imageData2.Length > 0);
        
        var imageData3 = await ValidImageUrl3.Downloaded();
        Assert.IsTrue(imageData3.Length > 0);

        await Assert.ThrowsExceptionAsync<HttpRequestException>(
            () => NotFoundImageUrl.Downloaded()
        );

        await Assert.ThrowsExceptionAsync<HttpRequestException>(() => InvalidImageUrl.Downloaded());
    }
}