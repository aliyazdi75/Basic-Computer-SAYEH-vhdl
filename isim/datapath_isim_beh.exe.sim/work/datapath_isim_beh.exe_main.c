/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_0261538191_3212880686_init();
    work_a_0039736933_3212880686_init();
    work_a_2740651633_3212880686_init();
    work_a_4198592189_3212880686_init();
    work_a_0416868682_3212880686_init();
    work_a_1182382131_3212880686_init();
    work_a_1673823861_3212880686_init();
    work_a_0743685656_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1561973598_3212880686_init();
    work_a_0380725995_3212880686_init();
    work_a_1991350011_3212880686_init();
    work_a_0018936630_3212880686_init();
    work_a_1846354236_3212880686_init();
    work_a_3027548060_3212880686_init();


    xsi_register_tops("work_a_3027548060_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
