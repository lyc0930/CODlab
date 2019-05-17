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
extern void execute_233(char*, char *);
extern void execute_550(char*, char *);
extern void execute_551(char*, char *);
extern void execute_552(char*, char *);
extern void execute_553(char*, char *);
extern void execute_3(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_238(char*, char *);
extern void execute_239(char*, char *);
extern void execute_240(char*, char *);
extern void execute_7(char*, char *);
extern void execute_241(char*, char *);
extern void execute_10(char*, char *);
extern void execute_243(char*, char *);
extern void execute_244(char*, char *);
extern void execute_242(char*, char *);
extern void execute_13(char*, char *);
extern void execute_246(char*, char *);
extern void execute_247(char*, char *);
extern void execute_248(char*, char *);
extern void execute_249(char*, char *);
extern void execute_245(char*, char *);
extern void execute_16(char*, char *);
extern void execute_251(char*, char *);
extern void execute_252(char*, char *);
extern void execute_253(char*, char *);
extern void execute_254(char*, char *);
extern void execute_255(char*, char *);
extern void execute_256(char*, char *);
extern void execute_257(char*, char *);
extern void execute_258(char*, char *);
extern void execute_250(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_25(char*, char *);
extern void execute_269(char*, char *);
extern void execute_270(char*, char *);
extern void execute_271(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_283(char*, char *);
extern void execute_284(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_289(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_292(char*, char *);
extern void execute_67(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_318(char*, char *);
extern void execute_321(char*, char *);
extern void execute_323(char*, char *);
extern void execute_324(char*, char *);
extern void execute_325(char*, char *);
extern void execute_328(char*, char *);
extern void execute_329(char*, char *);
extern void execute_330(char*, char *);
extern void execute_331(char*, char *);
extern void execute_327(char*, char *);
extern void execute_109(char*, char *);
extern void execute_110(char*, char *);
extern void execute_162(char*, char *);
extern void execute_163(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_237(char*, char *);
extern void execute_554(char*, char *);
extern void execute_555(char*, char *);
extern void execute_556(char*, char *);
extern void execute_557(char*, char *);
extern void execute_558(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_23(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_24(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_26(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_27(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_28(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_29(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[105] = {(funcp)execute_233, (funcp)execute_550, (funcp)execute_551, (funcp)execute_552, (funcp)execute_553, (funcp)execute_3, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_238, (funcp)execute_239, (funcp)execute_240, (funcp)execute_7, (funcp)execute_241, (funcp)execute_10, (funcp)execute_243, (funcp)execute_244, (funcp)execute_242, (funcp)execute_13, (funcp)execute_246, (funcp)execute_247, (funcp)execute_248, (funcp)execute_249, (funcp)execute_245, (funcp)execute_16, (funcp)execute_251, (funcp)execute_252, (funcp)execute_253, (funcp)execute_254, (funcp)execute_255, (funcp)execute_256, (funcp)execute_257, (funcp)execute_258, (funcp)execute_250, (funcp)execute_22, (funcp)execute_23, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_25, (funcp)execute_269, (funcp)execute_270, (funcp)execute_271, (funcp)execute_33, (funcp)execute_34, (funcp)execute_35, (funcp)execute_281, (funcp)execute_282, (funcp)execute_283, (funcp)execute_284, (funcp)execute_41, (funcp)execute_42, (funcp)execute_43, (funcp)execute_289, (funcp)execute_290, (funcp)execute_291, (funcp)execute_292, (funcp)execute_67, (funcp)execute_69, (funcp)execute_70, (funcp)execute_318, (funcp)execute_321, (funcp)execute_323, (funcp)execute_324, (funcp)execute_325, (funcp)execute_328, (funcp)execute_329, (funcp)execute_330, (funcp)execute_331, (funcp)execute_327, (funcp)execute_109, (funcp)execute_110, (funcp)execute_162, (funcp)execute_163, (funcp)execute_235, (funcp)execute_236, (funcp)execute_237, (funcp)execute_554, (funcp)execute_555, (funcp)execute_556, (funcp)execute_557, (funcp)execute_558, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_23, (funcp)transaction_24, (funcp)transaction_25, (funcp)transaction_26, (funcp)transaction_27, (funcp)transaction_28, (funcp)transaction_29, (funcp)transaction_31, (funcp)transaction_33, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_47, (funcp)transaction_49, (funcp)transaction_51, (funcp)transaction_53, (funcp)transaction_55, (funcp)transaction_57, (funcp)transaction_59, (funcp)transaction_61, (funcp)transaction_106, (funcp)transaction_111, (funcp)transaction_116, (funcp)transaction_121, (funcp)transaction_129, (funcp)transaction_134, (funcp)transaction_139};
const int NumRelocateId= 105;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/DIV_tb_func_synth/xsim.reloc",  (void **)funcTab, 105);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/DIV_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/DIV_tb_func_synth/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/DIV_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/DIV_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/DIV_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
