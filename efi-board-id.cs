// ROMHelper.cs - David R - 22.02.2023
// CSharp.NET code to pull a Mac board-id from compatible EFIROM dumps.

using System;
using System.IO;
using System.Text;

namespace MacTools.EFI
{
    class ROMHelper
    {
        const int BID_DATA_OFFSET = 0x1060;   // Offset in PDR region, actual board-id is at 0x1064h (BID_OFFSET + BID_POS).
        const int BID_DATA_LEN = 0x12;        // Lenth of the data we want.
        const int BID_POS = 0x4;              // Position of board-id.
        const int BID_LEN = 0x8;              // Length of board-id (8 bytes).

        private static readonly byte[] hexDescriptor = { 0x5A, 0xA5, 0xF0, 0x0F };    // Descriptor signature
        private static readonly byte[] hexBoardId = { 0x7C, 0x00, 0x00, 0x19 };       // board-id signature

        public static string strGetBoardIdFromEfiROM(string filePath)
        {
            try
            {
                using (FileStream fileStream = new FileStream(filePath, FileMode.Open))
                {
                    using (BinaryReader binaryReader = new BinaryReader(fileStream, Encoding.Unicode))
                    {
                        byte[] bytesDescriptor = new byte[0x4];
                        byte[] bytesBoardId = new byte[BID_DATA_LEN];

                        binaryReader.BaseStream.Position = 0x10;
                        bytesDescriptor = binaryReader.ReadBytes(0x4);

                        // Compare magic bytes to expected bytes
                        if (bytesDescriptor[0] == hexDescriptor[0] && bytesDescriptor[1] == hexDescriptor[1] &&
                            bytesDescriptor[2] == hexDescriptor[2] && bytesDescriptor[3] == hexDescriptor[3])
                        {
                            binaryReader.BaseStream.Position = BID_DATA_OFFSET;
                            bytesBoardId = binaryReader.ReadBytes(BID_DATA_LEN);

                            // Looking for 7C000019h in the first 4 bytes skipping 0x00.
                            if (bytesBoardId[0] == hexBoardId[0] && bytesBoardId[3] == hexBoardId[3])
                            {
                                // Found bytes, return the board-id.
                                string strBcBytes = BitConverter.ToString(bytesBoardId, BID_POS, BID_LEN).Replace("-", ""); // Spit out board-id hexadecimal.
                                return string.Concat("Mac-", strBcBytes); // Return final string
                            }
                            else
                            {
                                return "Expected bytes not found at 0x1060h."; // Expected bytes not found.
                            }
                        }
                        else
                        {
                            return "No descriptor, not a valid binary?"; // Descriptor not found.
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