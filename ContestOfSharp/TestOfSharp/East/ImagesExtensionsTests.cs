namespace TestOfSharp.East;

using System;
using ContestOfSharp.East;

[TestClass]
public class ImagesExtensionsTests
{
    private static readonly Uri ValidImageUrl1 = new Uri("https://picsum.photos/300/200"); // 3:2
    private static readonly Uri ValidImageUrl2 = new Uri("https://picsum.photos/640/480"); // 4:3
    private static readonly Uri ValidImageUrl3 = new Uri("https://picsum.photos/1920/1080"); // 16:9
    private static readonly Uri NotFoundImageUrl = new Uri("https://picsum.photos/notfound"); // Not Found!
    private static readonly Uri InvalidImageUrl = new Uri("https://picsum.never/never"); // THROWS!
    
    [TestMethod]
    public async Task TestDownloadAsImage()
    {
        var image1 = await ValidImageUrl1.DownloadedAsImage();
        Assert.AreEqual(expected: 300, actual: image1.Width);
        Assert.AreEqual(expected: 200, actual: image1.Height);
        
        var image2 = await ValidImageUrl2.DownloadedAsImage();
        Assert.AreEqual(expected: 640, actual: image2.Width);
        Assert.AreEqual(expected: 480, actual: image2.Height);
        
        var image3 = await ValidImageUrl3.DownloadedAsImage();
        Assert.AreEqual(expected: 1920, actual: image3.Width);
        Assert.AreEqual(expected: 1080, actual: image3.Height);
        
        await Assert.ThrowsExceptionAsync<HttpRequestException>(() => NotFoundImageUrl.DownloadedAsImage());
        await Assert.ThrowsExceptionAsync<HttpRequestException>(() => InvalidImageUrl.DownloadedAsImage());
    }

    [TestMethod]
    public async Task TestGetAspectRatio()
    {
        var image1 = await ValidImageUrl1.DownloadedAsImage();
        var aspectRatio1 = image1.GetAspectRatio();
        Assert.AreEqual(expected: 3.0, actual: aspectRatio1.width);
        Assert.AreEqual(expected: 2.0, actual: aspectRatio1.height);

        var image2 = await ValidImageUrl2.DownloadedAsImage();
        var aspectRatio2 = image2.GetAspectRatio();
        Assert.AreEqual(expected: 4.0, actual: aspectRatio2.width);
        Assert.AreEqual(expected: 3.0, actual: aspectRatio2.height);
        
        var image3 = await ValidImageUrl3.DownloadedAsImage();
        var aspectRatio3 = image3.GetAspectRatio();
        Assert.AreEqual(expected: 16.0, actual: aspectRatio3.width);
        Assert.AreEqual(expected: 9.0, actual: aspectRatio3.height);
        
        await Assert.ThrowsExceptionAsync<HttpRequestException>(() => NotFoundImageUrl.DownloadedAsImage());
        await Assert.ThrowsExceptionAsync<HttpRequestException>(() => InvalidImageUrl.DownloadedAsImage());
    }
}