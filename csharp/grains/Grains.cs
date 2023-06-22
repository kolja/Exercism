using System;
using System.Linq;

public static class Grains
{
    public static ulong Square(int bla)
    {
        if (!Enumerable.Range(1, 64).Contains(bla)) throw new ArgumentOutOfRangeException();
        object  = int.TryParse(str, out int result)
        return (ulong)Math.Pow(2, bla - 1)
    }

    public static ulong Total()
    {
        return Enumerable.Range(1, 64).Aggregate((ulong)0, (a, b) => (ulong)a + Square(b));
    }
}
