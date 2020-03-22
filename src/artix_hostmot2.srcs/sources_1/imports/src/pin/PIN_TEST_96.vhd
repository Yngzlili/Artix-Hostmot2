library IEEE;
use IEEE.std_logic_1164.all;  -- defines std_logic types
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Copyright (C) 2007, Peter C. Wallace, Mesa Electronics
-- http://www.mesanet.com
--
-- This program is is licensed under a disjunctive dual license giving you
-- the choice of one of the two following sets of free software/open source
-- licensing terms:
--
--    * GNU General Public License (GPL), version 2.0 or later
--    * 3-clause BSD License
-- 
--
-- The GNU GPL License:
-- 
--     This program is free software; you can redistribute it and/or modify
--     it under the terms of the GNU General Public License as published by
--     the Free Software Foundation; either version 2 of the License, or
--     (at your option) any later version.
-- 
--     This program is distributed in the hope that it will be useful,
--     but WITHOUT ANY WARRANTY; without even the implied warranty of
--     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--     GNU General Public License for more details.
-- 
--     You should have received a copy of the GNU General Public License
--     along with this program; if not, write to the Free Software
--     Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
-- 
-- 
-- The 3-clause BSD License:
-- 
--     Redistribution and use in source and binary forms, with or without
--     modification, are permitted provided that the following conditions
--     are met:
-- 
--   * Redistributions of source code must retain the above copyright
--     notice, this list of conditions and the following disclaimer.
-- 
--   * Redistributions in binary form must reproduce the above
--     copyright notice, this list of conditions and the following
--     disclaimer in the documentation and/or other materials
--     provided with the distribution.
-- 
--   * Neither the name of Mesa Electronics nor the names of its
--     contributors may be used to endorse or promote products
--     derived from this software without specific prior written
--     permission.
-- 
-- 
-- Disclaimer:
-- 
--     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
--     "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
--     LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
--     FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
--     COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
--     INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
--     BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
--     CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
--     LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
--     ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--     POSSIBILITY OF SUCH DAMAGE.
-- 

use work.IDROMConst.all;

package PIN_TEST_96 is
	constant ModuleID : ModuleIDType :=( 
		(WatchDogTag,	x"00",	ClockLowTag,	x"01",	WatchDogTimeAddr&PadT,		WatchDogNumRegs,		x"00",	WatchDogMPBitMask),
		(IOPortTag,		x"00",	ClockLowTag,	x"04",	PortAddr&PadT,					IOPortNumRegs,			x"00",	IOPortMPBitMask),
		(QcountTag,		x"08",	ClockLowTag,	x"08",	QcounterAddr&PadT,			QCounterNumRegs,		x"00",	QCounterMPBitMask),
		(StepGenTag,	x"02",	ClockLowTag,	x"08",	StepGenRateAddr&PadT,		StepGenNumRegs,		x"00",	StepGenMPBitMask),
		(DBSPITag,		x"00",	ClockLowTag,	x"06",	DBSPIDataAddr&PadT,			DBSPINumRegs,			x"00",	DBSPIMPBitMask),
		(PktUARTTTag,	x"00",	ClockLowTag,	x"08",	PktUARTTDataAddr&PadT,		PktUARTTNumRegs,		x"00",	PktUARTTMPBitMask),
		(PktUARTRTag,	x"00",	ClockLowTag,	x"08",	PktUARTRDataAddr&PadT,		PktUARTRNumRegs,		x"00",	PktUARTRMPBitMask),
      (LEDTag,			x"00",	ClockLowTag,	x"01",	LEDAddr&PadT,					LEDNumRegs,				x"00",	LEDMPBitMask),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000")
		);
			
	constant PinDesc : PinDescType :=(
-- 	Base func  sec unit sec func 	 		 sec pin		
		IOPortTag & x"00" & StepGenTag & StepGenDirPin,					-- I/O 00	PIN 
		IOPortTag & x"00" & StepGenTag & StepGenStepPin,				-- I/O 01 	PIN	
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 02	PIN
		IOPortTag & x"00" & QCountTag & QCountIdxPin,   				-- I/O 03   PIN 
		IOPortTag & x"00" & QCountTag & QCountQBPin,    				-- I/O 04   PIN 
		IOPortTag & x"00" & QCountTag & QCountQAPin,    				-- I/O 05  	PIN		
		IOPortTag & x"01" & StepGenTag & StepGenDirPin,					-- I/O 06	PIN 
		IOPortTag & x"01" & StepGenTag & StepGenStepPin,				-- I/O 07 	PIN	
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 08	PIN
		IOPortTag & x"01" & QCountTag & QCountIdxPin,   				-- I/O 09   PIN 
		IOPortTag & x"01" & QCountTag & QCountQBPin,    				-- I/O 10   PIN 
		IOPortTag & x"01" & QCountTag & QCountQAPin,    				-- I/O 11  	PIN	
		IOPortTag & x"02" & StepGenTag & StepGenDirPin,					-- I/O 12	PIN 
		IOPortTag & x"02" & StepGenTag & StepGenStepPin,				-- I/O 13 	PIN	
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 14	PIN
		IOPortTag & x"02" & QCountTag & QCountIdxPin,   				-- I/O 15   PIN 
		IOPortTag & x"02" & QCountTag & QCountQBPin,    				-- I/O 16   PIN 
		IOPortTag & x"02" & QCountTag & QCountQAPin,    				-- I/O 17  	PIN	
		IOPortTag & x"00" & StepGenTag & StepGenDirPin,					-- I/O 18	PIN 
		IOPortTag & x"00" & StepGenTag & StepGenStepPin,				-- I/O 19 	PIN	
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 20	PIN
		IOPortTag & x"00" & QCountTag & QCountIdxPin,   				-- I/O 21   PIN 
		IOPortTag & x"00" & QCountTag & QCountQBPin,    				-- I/O 22   PIN 
		IOPortTag & x"00" & QCountTag & QCountQAPin,    				-- I/O 23  	PIN	
					                                   
		IOPortTag & x"00" & DBSPITag & DBSPIClkPin,  					-- I/O 48	PIN
		IOPortTag & x"00" & DBSPITag & DBSPIOutPin,						-- I/O 49	PIN
		IOPortTag & x"00" & DBSPITag & DBSPIInPin,   					-- I/O 50	PIN
		IOPortTag & x"00" & DBSPITag & DBSPICS0Pin,						-- I/O 51	PIN
		IOPortTag & x"01" & DBSPITag & DBSPIClkPin,  					-- I/O 48	PIN
		IOPortTag & x"01" & DBSPITag & DBSPIOutPin,						-- I/O 49	PIN
		IOPortTag & x"01" & DBSPITag & DBSPIInPin,   					-- I/O 50	PIN
		IOPortTag & x"01" & DBSPITag & DBSPICS0Pin,						-- I/O 51	PIN
		IOPortTag & x"02" & DBSPITag & DBSPIClkPin,  					-- I/O 48	PIN
		IOPortTag & x"02" & DBSPITag & DBSPIOutPin,						-- I/O 49	PIN
		IOPortTag & x"02" & DBSPITag & DBSPIInPin,   					-- I/O 50	PIN	
		IOPortTag & x"02" & DBSPITag & DBSPICS0Pin,						-- I/O 51	PIN
		IOPortTag & x"03" & DBSPITag & DBSPIClkPin,  					-- I/O 48	PIN
		IOPortTag & x"03" & DBSPITag & DBSPIOutPin,						-- I/O 49	PIN
		IOPortTag & x"03" & DBSPITag & DBSPIInPin,   					-- I/O 50	PIN
		IOPortTag & x"03" & DBSPITag & DBSPICS0Pin,						-- I/O 51	PIN
		IOPortTag & x"04" & DBSPITag & DBSPIClkPin,  					-- I/O 48	PIN
		IOPortTag & x"04" & DBSPITag & DBSPIOutPin,						-- I/O 49	PIN
		IOPortTag & x"04" & DBSPITag & DBSPIInPin,   					-- I/O 50	PIN
		IOPortTag & x"04" & DBSPITag & DBSPICS0Pin,						-- I/O 51	PIN
		IOPortTag & x"05" & DBSPITag & DBSPIClkPin,  					-- I/O 48	PIN
		IOPortTag & x"05" & DBSPITag & DBSPIOutPin,						-- I/O 49	PIN
		IOPortTag & x"05" & DBSPITag & DBSPIInPin,   					-- I/O 50	PIN
		IOPortTag & x"05" & DBSPITag & DBSPICS0Pin,						-- I/O 51	PIN
																					
		IOPortTag & x"04" & StepGenTag & StepGenDirPin,					-- I/O 00	PIN 
		IOPortTag & x"04" & StepGenTag & StepGenStepPin,				-- I/O 01 	PIN	
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 02	PIN
		IOPortTag & x"04" & QCountTag & QCountIdxPin,   				-- I/O 03   PIN 
		IOPortTag & x"04" & QCountTag & QCountQBPin,    				-- I/O 04   PIN 
		IOPortTag & x"04" & QCountTag & QCountQAPin,    				-- I/O 05  	PIN		
		IOPortTag & x"05" & StepGenTag & StepGenDirPin,					-- I/O 06	PIN 
		IOPortTag & x"05" & StepGenTag & StepGenStepPin,				-- I/O 07 	PIN	
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 08	PIN
		IOPortTag & x"05" & QCountTag & QCountIdxPin,   				-- I/O 09   PIN 
		IOPortTag & x"05" & QCountTag & QCountQBPin,    				-- I/O 10   PIN 
		IOPortTag & x"05" & QCountTag & QCountQAPin,    				-- I/O 11  	PIN	
		IOPortTag & x"06" & StepGenTag & StepGenDirPin,					-- I/O 12	PIN 
		IOPortTag & x"06" & StepGenTag & StepGenStepPin,				-- I/O 13 	PIN	
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 14	PIN
		IOPortTag & x"06" & QCountTag & QCountIdxPin,   				-- I/O 15   PIN 
		IOPortTag & x"06" & QCountTag & QCountQBPin,    				-- I/O 16   PIN 
		IOPortTag & x"06" & QCountTag & QCountQAPin,    				-- I/O 17  	PIN	
		IOPortTag & x"07" & StepGenTag & StepGenDirPin,					-- I/O 18	PIN 
		IOPortTag & x"07" & StepGenTag & StepGenStepPin,				-- I/O 19 	PIN	
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 20	PIN
		IOPortTag & x"07" & QCountTag & QCountIdxPin,   				-- I/O 21   PIN 
		IOPortTag & x"07" & QCountTag & QCountQBPin,    				-- I/O 22   PIN 
		IOPortTag & x"07" & QCountTag & QCountQAPin,    				-- I/O 23  	PIN	

		IOPortTag & x"00" & PktUARTRTag & PktURDataPin, 				-- I/O 00   PIN
		IOPortTag & x"01" & PktUARTRTag & PktURDataPin,   				-- I/O 01	PIN
		IOPortTag & x"02" & PktUARTRTag & PktURDataPin,   				-- I/O 02   PIN
		IOPortTag & x"03" & PktUARTRTag & PktURDataPin,   				-- I/O 03   PIN
		IOPortTag & x"00" & PktUARTTTag & PktUTDataPin,   				-- I/O 04   PIN
		IOPortTag & x"00" & PktUARTTTag & PktUTDrvEnPin,				-- I/O 05	PIN
		IOPortTag & x"01" & PktUARTTTag & PktUTDataPin,					-- I/O 06	PIN
		IOPortTag & x"01" & PktUARTTTag & PktUTDrvEnPin,				-- I/O 07	PIN
		IOPortTag & x"02" & PktUARTTTag & PktUTDataPin,       		-- I/O 08	PIN
		IOPortTag & x"02" & PktUARTTTag & PktUTDrvEnPin,      		-- I/O 09	PIN
		IOPortTag & x"03" & PktUARTTTag & PktUTDataPin,      			-- I/O 10	PIN
		IOPortTag & x"03" & PktUARTTTag & PktUTDrvEnPin,      		-- I/O 11	PIN
		IOPortTag & x"04" & PktUARTRTag & PktURDataPin, 				-- I/O 12	PIN  
		IOPortTag & x"05" & PktUARTRTag & PktURDataPin,   				-- I/O 13	PIN
		IOPortTag & x"06" & PktUARTRTag & PktURDataPin,   				-- I/O 14	PIN
		IOPortTag & x"07" & PktUARTRTag & PktURDataPin,   				-- I/O 15	PIN
		IOPortTag & x"04" & PktUARTTTag & PktUTDataPin,   				-- I/O 16	PIN
		IOPortTag & x"04" & PktUARTTTag & PktUTDrvEnPin,				-- I/O 17	PIN
		IOPortTag & x"05" & PktUARTTTag & PktUTDataPin,					-- I/O 18	PIN
		IOPortTag & x"05" & PktUARTTTag & PktUTDrvEnPin,				-- I/O 19	PIN
		IOPortTag & x"06" & PktUARTTTag & PktUTDataPin,       		-- I/O 20	PIN
		IOPortTag & x"06" & PktUARTTTag & PktUTDrvEnPin,      		-- I/O 21	PIN
		IOPortTag & x"07" & PktUARTTTag & PktUTDataPin,      			-- I/O 22	PIN
		IOPortTag & x"07" & PktUARTTTag & PktUTDrvEnPin,				-- I/O 23	PIN

		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin, -- added for IDROM v3
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin);

end package PIN_TEST_96;
