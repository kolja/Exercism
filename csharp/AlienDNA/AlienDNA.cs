using System;

// run from the commandline: 
// mcs -pkg:dotnet AlienDNA.cs && mono AlienDNA.exe
class AlienDNA
{
    public static string SayHello()
    {
        return "几一儿";
    }

    public static void Main()
    {
        string str =  "几一儿";

        Console.Write("-> "+(ushort)"几"[0]);
        foreach (var ch in str)
            // Console.Write(Convert.ToUInt16(ch));
            Console.Write("{0} ", Convert.ToUInt16(ch));
    }
}
