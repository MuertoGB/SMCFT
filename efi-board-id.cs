// David R, 22.02.2022
// C# code to pull a Mac board-id from a BIOS dump on compatible ROMs.

using System;
using System.IO;

namespace MacTools.EFI
{
    class ROMHelper
    {
        public static string boardIdFromEfiROM(string FilePath)
        {
            using (FileStream fileStream = new FileStream(FilePath, FileMode.Open))
            {
                using (BinaryReader binaryReader = new BinaryReader(fileStream))
                {
                    long len = fileStream.Length;
                    byte[] bIdBytes = new byte[12];
                    binaryReader.BaseStream.Position = 0x1060;
                    bIdBytes = binaryReader.ReadBytes(0x12);

                    // Looking for U+7C000019
                    if (bIdBytes[0] == 0x7C && bIdBytes[3] == 0x19)
                    {
                        // Found magic bytes, return the board-id.
                        return string.Concat("Mac-", BitConverter.ToString(bIdBytes, 4, 8).Replace("-", ""));
                    }
                }
            }
            return "Magic not found, better luck next time.";
        }
    }
}
