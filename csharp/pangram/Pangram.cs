using System;
using System.Linq;
using System.Collections.Generic;

public static class Pangram
{
    public static bool IsPangram(string input)
    {
        var sorted = input.ToLower()
                          .Distinct()
                          .OrderBy(a => a));
        return String.Concat(sorted).Contains("abcdefghijklmnopqrstuvwxyz");
    }
}

