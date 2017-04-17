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
static const char *ng0 = "D:/Ali Yazdi/Documents/GitHub/Architecture_Project/datapath.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3027548060_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;

LAB0:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 6752U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 10512);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(154, ng0);
    t3 = (t0 + 8872U);
    t4 = *((char **)t3);
    t3 = (t0 + 10592);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 16U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(155, ng0);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 10656);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 16U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(156, ng0);
    t1 = (t0 + 7272U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 10720);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(157, ng0);
    t1 = (t0 + 7432U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 10784);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(158, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t9 = (t2 == (unsigned char)2);
    if (t9 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(161, ng0);
    t1 = (t0 + 8712U);
    t3 = *((char **)t1);
    t10 = (15 - 3);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t1 = (t3 + t12);
    t4 = (t0 + 10848);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);

LAB6:    xsi_set_current_line(163, ng0);
    t1 = (t0 + 3752U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t9 = (t2 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 5672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t9 = (t2 == (unsigned char)3);
    if (t9 != 0)
        goto LAB11;

LAB12:
LAB9:    xsi_set_current_line(168, ng0);
    t1 = (t0 + 5832U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t9 = (t2 == (unsigned char)3);
    if (t9 != 0)
        goto LAB13;

LAB15:    t1 = (t0 + 5992U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t9 = (t2 == (unsigned char)3);
    if (t9 != 0)
        goto LAB16;

LAB17:
LAB14:    goto LAB3;

LAB5:    xsi_set_current_line(159, ng0);
    t1 = (t0 + 8712U);
    t4 = *((char **)t1);
    t10 = (15 - 11);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t1 = (t4 + t12);
    t5 = (t0 + 10848);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB6;

LAB8:    xsi_set_current_line(164, ng0);
    t1 = (t0 + 8552U);
    t4 = *((char **)t1);
    t1 = (t0 + 10912);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(166, ng0);
    t1 = (t0 + 8872U);
    t4 = *((char **)t1);
    t1 = (t0 + 10912);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB13:    xsi_set_current_line(169, ng0);
    t1 = (t0 + 8232U);
    t4 = *((char **)t1);
    t1 = (t0 + 10976);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 16U);
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    xsi_set_current_line(171, ng0);
    t1 = (t0 + 8392U);
    t4 = *((char **)t1);
    t1 = (t0 + 10976);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 16U);
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

}


extern void work_a_3027548060_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3027548060_3212880686_p_0};
	xsi_register_didat("work_a_3027548060_3212880686", "isim/datapath_isim_beh.exe.sim/work/a_3027548060_3212880686.didat");
	xsi_register_executes(pe);
}
