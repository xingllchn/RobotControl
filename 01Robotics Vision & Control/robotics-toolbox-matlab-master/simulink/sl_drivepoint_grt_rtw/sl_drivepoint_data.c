/*
 * sl_drivepoint_data.c
 *
 * Code generation for model "sl_drivepoint".
 *
 * Model version              : 1.26
 * Simulink Coder version : 8.6 (R2014a) 27-Dec-2013
 * C source code generated on : Fri Mar 09 13:26:13 2018
 *
 * Target selection: grt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Generic->32-bit x86 compatible
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */
#include "sl_drivepoint.h"
#include "sl_drivepoint_private.h"

/* Block parameters (auto storage) */
P_sl_drivepoint_T sl_drivepoint_P = {
  /*  Variable: x0
   * Referenced by: '<S1>/Integrator'
   */
  { 8.0, 5.0, 1.5707963267948966 },

  /*  Variable: xg
   * Referenced by: '<Root>/Goal'
   */
  { 5.0, 5.0 },
  1.0,                                 /* Mask Parameter: Bicycle_accel
                                        * Referenced by: '<S1>/acceleration limit'
                                        */
  1.0,                                 /* Mask Parameter: Bicycle_alim
                                        * Referenced by: '<S1>/steering angle limit'
                                        */
  0.0,                                 /* Mask Parameter: Bicycle_handbrake
                                        * Referenced by: '<S1>/Constant'
                                        */
  1.0,                                 /* Mask Parameter: Bicycle_vlim
                                        * Referenced by: '<S1>/vel limit'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<Root>/Gain'
                                        */
  4.0                                  /* Expression: 4
                                        * Referenced by: '<Root>/Kh'
                                        */
};
