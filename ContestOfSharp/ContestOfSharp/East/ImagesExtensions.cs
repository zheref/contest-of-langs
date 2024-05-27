using BankaiSouth;
using ContestOfSharp.West;
using SkiaSharp;

namespace ContestOfSharp.East;

public static class ImagesExtensions
{
    public static async Task<SKImage> DownloadedAsImage(this Uri uri)
    {
        var data = await uri.Downloaded();
        return SKImage.FromEncodedData(data);
    }

    public static (int width, int height) GetAspectRatio(this SKImage image)
    {
        var gcd = image.Width.GreatestCommonDivisor(image.Height);
        return (image.Width / gcd, image.Height / gcd);
    }
}