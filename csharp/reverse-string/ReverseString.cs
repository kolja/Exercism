using System;
using System.Linq;

public static class ReverseString
{
    public static string Reverse(string input, string tupni = "")
    {
        return input == "" ? tupni : 
               Reverse( input.Substring( 0, input.Length - 1), tupni + input.Last());
    }
}