using System;
using System.Linq;
using System.Text.RegularExpressions;

public static class Isogram
{
    public static bool IsIsogram(string word)
    {
        string lc = Regex.Replace(word.ToLower(), @"\W", "");
        string dist = String.Concat(lc.Distinct());
        return lc == dist;
    }
}
