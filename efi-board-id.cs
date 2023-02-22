// David R, 22.02.2023
// C# code to pull a Mac board-id from compatible EFIROM dumps.

using System;
using System.IO;

namespace MacTools.EFI
{
    class ROMHelper
    {
        const int BID_OFFSET = 0x1060;   // Offset in PDR region, actual board-id is at 0x1064h (BID_OFFSET + BID_POS).
        const int BID_DATA_LEN = 0x12;   // Length of the data we want.
        const int BID_POS = 0x4;         // Position of board-id.
        const int BID_LEN = 0x8;         // Length of board-id (8 bytes).

        public static string getBoardIdFromEfiROM(string filePath)
        {
            try
            {
                using (FileStream fileStream = new FileStream(filePath, FileMode.Open))
                {
                    using (BinaryReader binaryReader = new BinaryReader(fileStream))
                    {
                        string strBcBytes = string.Empty;
                        byte[] bIdBytes = new byte[BID_DATA_LEN];
                        binaryReader.BaseStream.Position = BID_OFFSET; // Seek to marker offset.
                        bIdBytes = binaryReader.ReadBytes(BID_DATA_LEN); // Read 12 bytes (Marker + Board ID in hex).

                        // Looking for 7C000019h in the first 4 bytes skipping 0x00
                        if (bIdBytes[0] == 0x7C && bIdBytes[3] == 0x19)
                        {
                            // Found bytes, return the board-id.
                            strBcBytes = BitConverter.ToString(bIdBytes, BID_POS, BID_LEN).Replace("-", ""); // Spit out board-id hexadecimal
                            return string.Concat("Mac-", strBcBytes); // Return final string
                        }
                        else
                        {
                            return "Marker not found at 0x1060h.";
                        }
                    }
                }
            }
            catch (Exception e)
            {
                return e.Message.ToString();
            }
        }
    }
}
