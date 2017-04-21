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
static const char *ng0 = "D:/Ali Yazdi/Documents/GitHub/Architecture_Project/alu.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_2725559894_3212880686_p_0(char *t0)
{
    char t5[16];
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    int t21;
    unsigned int t22;

LAB0:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB7;

LAB8:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB15;

LAB16:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB17;

LAB18:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB21;

LAB22:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB25;

LAB26:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB29;

LAB30:
LAB3:    t1 = (t0 + 7240);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t1 = (t0 + 11500U);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 11516U);
    t9 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t5, t6, t1, t8, t7);
    t10 = (t5 + 12U);
    t11 = *((unsigned int *)t10);
    t12 = (1U * t11);
    t13 = (16U != t12);
    if (t13 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 7336);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 16U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB3;

LAB5:    xsi_size_not_matching(16U, t12, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t1 = (t0 + 11500U);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 11516U);
    t9 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t5, t6, t1, t8, t7);
    t10 = (t5 + 12U);
    t11 = *((unsigned int *)t10);
    t12 = (1U * t11);
    t13 = (16U != t12);
    if (t13 == 1)
        goto LAB9;

LAB10:    t14 = (t0 + 7336);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 16U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB3;

LAB9:    xsi_size_not_matching(16U, t12, 0);
    goto LAB10;

LAB11:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t1 = (t0 + 11500U);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 11516U);
    t9 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t5, t6, t1, t8, t7);
    t10 = (t5 + 12U);
    t11 = *((unsigned int *)t10);
    t12 = (1U * t11);
    t13 = (16U != t12);
    if (t13 == 1)
        goto LAB13;

LAB14:    t14 = (t0 + 7336);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 16U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB3;

LAB13:    xsi_size_not_matching(16U, t12, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 4712U);
    t6 = *((char **)t1);
    t1 = (t0 + 7336);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 16U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7400);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB17:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 4872U);
    t6 = *((char **)t1);
    t1 = (t0 + 7336);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 16U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7400);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB19:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 4232U);
    t6 = *((char **)t1);
    t13 = *((unsigned char *)t6);
    t1 = (t0 + 7400);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t13;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7464);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB21:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t11 = (15 - 15);
    t12 = (t11 * 1U);
    t19 = (0 + t12);
    t1 = (t6 + t19);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t20 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 15;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t21 = (1 - 15);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t22;
    t7 = xsi_base_array_concat(t7, t5, t8, (char)99, (unsigned char)2, (char)97, t1, t20, (char)101);
    t22 = (1U + 15U);
    t13 = (16U != t22);
    if (t13 == 1)
        goto LAB23;

LAB24:    t10 = (t0 + 7336);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB23:    xsi_size_not_matching(16U, t22, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t11 = (15 - 14);
    t12 = (t11 * 1U);
    t19 = (0 + t12);
    t1 = (t6 + t19);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t20 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 14;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t21 = (0 - 14);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t22;
    t7 = xsi_base_array_concat(t7, t5, t8, (char)97, t1, t20, (char)99, (unsigned char)2, (char)101);
    t22 = (15U + 1U);
    t13 = (16U != t22);
    if (t13 == 1)
        goto LAB27;

LAB28:    t10 = (t0 + 7336);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB27:    xsi_size_not_matching(16U, t22, 0);
    goto LAB28;

LAB29:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t1 = (t0 + 7336);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}

static void work_a_2725559894_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(84, ng0);

LAB3:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 11516U);
    t4 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t1, t3, t2);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (16U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 7528);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 7256);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t7, 0);
    goto LAB6;

}


extern void work_a_2725559894_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2725559894_3212880686_p_0,(void *)work_a_2725559894_3212880686_p_1};
	xsi_register_didat("work_a_2725559894_3212880686", "isim/alu_isim_beh.exe.sim/work/a_2725559894_3212880686.didat");
	xsi_register_executes(pe);
}
