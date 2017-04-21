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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Ali Yazdi/Documents/GitHub/Architecture_Project/memory.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_0606318341_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;

LAB0:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 2488U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3872);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    t1 = (t0 + 3792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 23037);
    t6 = (t0 + 2248U);
    t7 = *((char **)t6);
    t8 = (0 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t6 = (t7 + t11);
    memcpy(t6, t1, 16U);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 23053);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 23069);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (2 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 23085);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 23101);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (4 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 23117);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (5 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 23133);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (6 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 23149);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (7 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 23165);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (8 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 23181);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (9 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 23197);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (10 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 23213);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (11 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 23229);
    t5 = (t0 + 2248U);
    t6 = *((char **)t5);
    t8 = (12 - 0);
    t9 = (t8 * 1);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 16U);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2488U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB3;

LAB5:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t2 = (t0 + 6552U);
    t8 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t2);
    t7 = (t0 + 2368U);
    t14 = *((char **)t7);
    t7 = (t14 + 0);
    *((int *)t7) = t8;
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB17;

LAB18:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB22;

LAB23:
LAB12:    goto LAB6;

LAB8:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)3);
    t3 = t13;
    goto LAB10;

LAB11:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3872);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t3 = (t8 >= 1024);
    if (t3 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t1 = (t0 + 2368U);
    t5 = *((char **)t1);
    t8 = *((int *)t5);
    t17 = (t8 - 0);
    t9 = (t17 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t8);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t6 = (t0 + 3936);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);

LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(80, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)4, 16U);
    t6 = (t0 + 3936);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB15;

LAB17:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3872);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t3 = (t8 < 1024);
    if (t3 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB12;

LAB19:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 2248U);
    t6 = *((char **)t1);
    t1 = (t0 + 2368U);
    t7 = *((char **)t1);
    t17 = *((int *)t7);
    t18 = (t17 - 0);
    t9 = (t18 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t17);
    t10 = (16U * t9);
    t11 = (0 + t10);
    t1 = (t6 + t11);
    memcpy(t1, t5, 16U);
    goto LAB20;

LAB22:    xsi_set_current_line(90, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)4, 16U);
    t6 = (t0 + 3936);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB12;

}


extern void work_a_0606318341_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0606318341_3212880686_p_0};
	xsi_register_didat("work_a_0606318341_3212880686", "isim/stb_isim_beh.exe.sim/work/a_0606318341_3212880686.didat");
	xsi_register_executes(pe);
}
