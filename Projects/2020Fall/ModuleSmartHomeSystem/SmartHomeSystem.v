/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Smart Home System
---  Description: ModuleSmartHomeSystem:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module SmartHomeSystem (
	input         arst      , // async  reset
	input         clk,        // clock  posedge
	input [31:0] tc_base,




	output a 
	);
	
	
	wire [7:0] tc_ref;
	wire [15:0] adc_data;

	wire gas_in;
	wire [2:0] gas_mode;
	
	wire [31:0] tempc;
	wire [7:0] speed;
	wire [7:0] chs_conf;
	wire [3:0] chs_power;
	wire chs_mode pwm_data;
	

	wire [3:0] tcode;
	wire [3:0] ulight;
	wire [3:0] lenght;
	wire [3:0] wshade;
	wire [3:0] lightnum;
	wire [3:0] lightstate;

	wire load;
	wire [2:0] pdata;
	wire [2:0] qdata;


	wire wren;

	wire request;
	wire confirm;
	wire [1:0] password;
	wire [34:0] configin;
	wire [34:0] configout;
	wire [1:0] write_en;
	wire [2:0] dbg_state;
	
	
	TemperatureCalculator Module01 (
		.tc_base (tc_base     ),
		.tc_ref  (tc_ref      ),
		.adc_data(adc_data    ),
		.tempc   (tempc       )
	);
	assign tc_ref = memdata[7:0]; 

	GasDetectorSensor Module02 (
		.arst(arst),
		.clk(clk),
		.din(gas_in),
		.dout(gas_mode)
	);



	CoolHeatSystem Module03 (
		.arst     (arst     ),
		.clk      (clk      ),
		.speed    (speed    ),
		.chs_mode (chs_mode ),
		.chs_conf (chs_conf ),
		.chs_power(chs_power),
		.pwm_data (pwm_data )
	);


	LightingSystem Module04 (
		.tcode     (tcode     ),
		.ulight    (ulight    ),
		.lenght    (lenght    ),
		.wshade    (wshade    ),
		.lightnum  (lightnum  ),
		.lightstate(lightstate)
	);


	
	LightDance Module05 (
		.arst(arst), 
		.clk(clk), 
		.din(din), 
		.load(load), 
		.pdata(pdata), 
		.qdata(qdata)
	);



	MemoryUnit Module06 (
		.arst(arst), 
		.clk(clk), 
		.wren(wren), 
		.din(din), 
		.dout(dout)
	);



	ControlUnit Module07 (
		.arst     (arst     ),
		.clk      (clk      ),
		.request  (request  ),
		.confirm  (confirm  ),
		.password (password ),
		.configin (configin ),
		.configout(configout),
		.write_en (write_en ),
		.dbg_state(dbg_state)
	);




endmodule
