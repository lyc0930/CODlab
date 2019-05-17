/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_215(char*, char *);
extern void execute_536(char*, char *);
extern void execute_537(char*, char *);
extern void execute_538(char*, char *);
extern void execute_539(char*, char *);
extern void execute_3(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_8(char*, char *);
extern void execute_221(char*, char *);
extern void execute_222(char*, char *);
extern void execute_223(char*, char *);
extern void execute_224(char*, char *);
extern void execute_225(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_228(char*, char *);
extern void execute_220(char*, char *);
extern void execute_23(char*, char *);
extern void execute_266(char*, char *);
extern void execute_267(char*, char *);
extern void execute_268(char*, char *);
extern void execute_269(char*, char *);
extern void execute_265(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_280(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_451(char*, char *);
extern void execute_452(char*, char *);
extern void execute_400(char*, char *);
extern void execute_401(char*, char *);
extern void execute_402(char*, char *);
extern void execute_405(char*, char *);
extern void execute_406(char*, char *);
extern void execute_407(char*, char *);
extern void execute_408(char*, char *);
extern void execute_453(char*, char *);
extern void execute_454(char*, char *);
extern void execute_455(char*, char *);
extern void execute_128(char*, char *);
extern void execute_456(char*, char *);
extern void execute_154(char*, char *);
extern void execute_155(char*, char *);
extern void execute_156(char*, char *);
extern void execute_469(char*, char *);
extern void execute_470(char*, char *);
extern void execute_471(char*, char *);
extern void execute_202(char*, char *);
extern void execute_505(char*, char *);
extern void execute_506(char*, char *);
extern void execute_507(char*, char *);
extern void execute_217(char*, char *);
extern void execute_218(char*, char *);
extern void execute_219(char*, char *);
extern void execute_540(char*, char *);
extern void execute_541(char*, char *);
extern void execute_542(char*, char *);
extern void execute_543(char*, char *);
extern void execute_544(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_17(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_18(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_19(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_20(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_21(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_22(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_29(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_249(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_251(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_252(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_253(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_254(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_255(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_256(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_257(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_260(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_261(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_137(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_141(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_228(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_232(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_236(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_240(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_244(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_248(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_317(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_321(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_329(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_333(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_337(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_341(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_345(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_349(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_353(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_357(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_361(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[113] = {(funcp)execute_215, (funcp)execute_536, (funcp)execute_537, (funcp)execute_538, (funcp)execute_539, (funcp)execute_3, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_8, (funcp)execute_221, (funcp)execute_222, (funcp)execute_223, (funcp)execute_224, (funcp)execute_225, (funcp)execute_226, (funcp)execute_227, (funcp)execute_228, (funcp)execute_220, (funcp)execute_23, (funcp)execute_266, (funcp)execute_267, (funcp)execute_268, (funcp)execute_269, (funcp)execute_265, (funcp)execute_29, (funcp)execute_30, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_280, (funcp)execute_281, (funcp)execute_282, (funcp)execute_451, (funcp)execute_452, (funcp)execute_400, (funcp)execute_401, (funcp)execute_402, (funcp)execute_405, (funcp)execute_406, (funcp)execute_407, (funcp)execute_408, (funcp)execute_453, (funcp)execute_454, (funcp)execute_455, (funcp)execute_128, (funcp)execute_456, (funcp)execute_154, (funcp)execute_155, (funcp)execute_156, (funcp)execute_469, (funcp)execute_470, (funcp)execute_471, (funcp)execute_202, (funcp)execute_505, (funcp)execute_506, (funcp)execute_507, (funcp)execute_217, (funcp)execute_218, (funcp)execute_219, (funcp)execute_540, (funcp)execute_541, (funcp)execute_542, (funcp)execute_543, (funcp)execute_544, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_10, (funcp)transaction_11, (funcp)transaction_12, (funcp)transaction_13, (funcp)transaction_14, (funcp)transaction_15, (funcp)transaction_17, (funcp)transaction_18, (funcp)transaction_19, (funcp)transaction_20, (funcp)transaction_21, (funcp)transaction_22, (funcp)transaction_29, (funcp)transaction_249, (funcp)transaction_250, (funcp)transaction_251, (funcp)transaction_252, (funcp)transaction_253, (funcp)transaction_254, (funcp)transaction_255, (funcp)transaction_256, (funcp)transaction_257, (funcp)transaction_260, (funcp)transaction_261, (funcp)transaction_125, (funcp)transaction_129, (funcp)transaction_133, (funcp)transaction_137, (funcp)transaction_141, (funcp)transaction_145, (funcp)transaction_228, (funcp)transaction_232, (funcp)transaction_236, (funcp)transaction_240, (funcp)transaction_244, (funcp)transaction_248, (funcp)transaction_317, (funcp)transaction_321, (funcp)transaction_325, (funcp)transaction_329, (funcp)transaction_333, (funcp)transaction_337, (funcp)transaction_341, (funcp)transaction_345, (funcp)transaction_349, (funcp)transaction_353, (funcp)transaction_357, (funcp)transaction_361};
const int NumRelocateId= 113;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/FIB_tb_func_synth/xsim.reloc",  (void **)funcTab, 113);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/FIB_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/FIB_tb_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/FIB_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/FIB_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/FIB_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
