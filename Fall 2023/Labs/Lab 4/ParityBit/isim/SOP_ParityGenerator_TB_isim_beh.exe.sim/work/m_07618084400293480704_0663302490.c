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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/reza/Desktop/ParityBit/SOP_ParityGenerator_TB.v";
static unsigned int ng1[] = {0U, 0U};
static const char *ng2 = "Data: %b, Parity: %b";
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {5U, 0U};
static unsigned int ng8[] = {6U, 0U};
static unsigned int ng9[] = {7U, 0U};



static void Initial_16_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 2360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(16, ng0);

LAB4:    xsi_set_current_line(17, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(18, ng0);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng2, 3, t0, (char)118, t4, 3, (char)118, t6, 1);
    xsi_set_current_line(21, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(22, ng0);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng2, 3, t0, (char)118, t4, 3, (char)118, t6, 1);
    xsi_set_current_line(25, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(26, ng0);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng2, 3, t0, (char)118, t4, 3, (char)118, t6, 1);
    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng2, 3, t0, (char)118, t4, 3, (char)118, t6, 1);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng2, 3, t0, (char)118, t4, 3, (char)118, t6, 1);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng2, 3, t0, (char)118, t4, 3, (char)118, t6, 1);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng2, 3, t0, (char)118, t4, 3, (char)118, t6, 1);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng2, 3, t0, (char)118, t4, 3, (char)118, t6, 1);
    xsi_set_current_line(51, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}


extern void work_m_07618084400293480704_0663302490_init()
{
	static char *pe[] = {(void *)Initial_16_0};
	xsi_register_didat("work_m_07618084400293480704_0663302490", "isim/SOP_ParityGenerator_TB_isim_beh.exe.sim/work/m_07618084400293480704_0663302490.didat");
	xsi_register_executes(pe);
}
