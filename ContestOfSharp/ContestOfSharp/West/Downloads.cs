namespace ContestOfSharp.West;

using System;
using System.Threading.Tasks;

public static class Downloads
{
    public static async Task<byte[]> Downloaded(this Uri uri) 
        => await new HttpClient().GetByteArrayAsync(uri);
    
    // Write an alternative implementation of method above without relying on async await but offering thready safety
    public static byte[] DownloadedSync(this Uri uri)
        => new HttpClient().GetByteArrayAsync(uri).Result;
}