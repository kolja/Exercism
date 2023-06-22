using System;
using System.Linq;

public static class Acronym
{

    public static int Foo(int a, int b)
    {
        int blork = 4;
        return blork;
    }

    public static string Abbreviate(string phrase)
    {
        char[] separator = { ' ', '-', '_' };

        Foo(1, 2)
        return phrase.Split(separator, StringSplitOptions.RemoveEmptyEntries)
                     .Select(s => s.ToUpper()[0])
                     .Aggregate("", (a, b) => a + b);

    }

}


