//
//    Copyright(c) Microsoft Open Technologies, Inc. All rights reserved.
//
//    The MIT License(MIT)
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files(the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and / or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions :
//
//    The above copyright notice and this permission notice shall be included in
//    all copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//    THE SOFTWARE.
//
DefinitionBlock ("ACPITABL.dat", "SSDT", 1, "MSFT", "HTU", 1)
{
    Scope (\_SB)
    {
        //
        // Test peripheral device node for RPi2
        //
        Device(HTU)
		{
			Name(_HID, "HTU21D")
			Name(_UID, 1)
			
			Method(_CRS, 0x0, NotSerialized)
			{
				Name(RBUF, ResourceTemplate()
				{          
					I2CSerialBus(0x40, ControllerInitiated, 400000, AddressingMode7Bit, "\\_SB.I2C1", , ) 
				})
				Return(RBUF)
			}
		}
    }
}
