using System;
using System.Linq;

public enum Classification
{
    Abundant,
    Perfect,
    Deficient
}

public static class PerfectNumbers
{
    public static Classification Classify(int number)
    {
        if (number<=0) throw new ArgumentOutOfRangeException();
        return Enum.GetValues(typeof(Classification))
                   .Cast<Classification>()
                   .ElementAt(number.CompareTo(Aliquot(number)) + 1);
    }
    public static int Aliquot(int number)
    {
        return Enumerable.Range(1,number/2)
                         .Sum( n => (number % n == 0) ? n : 0 );

    }
}
