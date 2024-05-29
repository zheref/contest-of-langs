using BankaiSouth;

namespace ContestOfSharp.Challenges;

public class Challenge9
{
    public static string DecimalToSystem(Int16 systemBase, int dec)
        => dec.ToSystemBase(systemBase);
}