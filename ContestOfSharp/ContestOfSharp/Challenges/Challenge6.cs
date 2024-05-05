using ContestOfSharp.East;

namespace ContestOfSharp.Challenges;

public abstract class Challenge6
{
    public static async Task<(int, int)> CalculateAspectRatioOfImageFrom(Uri uri)
    {
        var image = await uri.DownloadedAsImage();
        return image.GetAspectRatio();
    }
}