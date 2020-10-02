/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_SC_LS__CLKDLYINV3SD2_1_V
`define SKY130_FD_SC_LS__CLKDLYINV3SD2_1_V

/**
 * clkdlyinv3sd2: Clock Delay Inverter 3-stage 0.25um length inner
 *                stage gate.
 *
 * Verilog wrapper for clkdlyinv3sd2 with size of 1 units.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`include "sky130_fd_sc_ls__clkdlyinv3sd2.v"

`ifdef USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_ls__clkdlyinv3sd2_1 (
    Y   ,
    A   ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    output Y   ;
    input  A   ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;
    sky130_fd_sc_ls__clkdlyinv3sd2 base (
        .Y(Y),
        .A(A),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

endmodule
`endcelldefine

/*********************************************************/
`else // If not USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_ls__clkdlyinv3sd2_1 (
    Y   ,
    A   ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    output Y   ;
    input  A   ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    sky130_fd_sc_ls__clkdlyinv3sd2 base (
        .Y(Y),
        .A(A)
    );

endmodule
`endcelldefine

/*********************************************************/
`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_SC_LS__CLKDLYINV3SD2_1_V
