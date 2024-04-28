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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_14723061407210558642_3190593924_init();
    work_m_02871897007744701030_0597467428_init();
    work_m_08941714888441564966_2679662850_init();
    work_m_02223542811341278160_3890714917_init();
    work_m_12245597318307620160_2950233121_init();
    work_m_03707478635005068086_0014183270_init();
    work_m_01350452300803916280_1877273954_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_01350452300803916280_1877273954");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
