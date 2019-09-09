/*
 * sl_drivepoint.c
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
#include "rt_logging_mmi.h"
#include "sl_drivepoint_capi.h"
#include "sl_drivepoint.h"
#include "sl_drivepoint_private.h"

/* Block signals (auto storage) */
B_sl_drivepoint_T sl_drivepoint_B;

/* Continuous states */
X_sl_drivepoint_T sl_drivepoint_X;

/* Block states (auto storage) */
DW_sl_drivepoint_T sl_drivepoint_DW;

/* Previous zero-crossings (trigger) states */
PrevZCX_sl_drivepoint_T sl_drivepoint_PrevZCX;

/* External outputs (root outports fed by signals with auto storage) */
ExtY_sl_drivepoint_T sl_drivepoint_Y;

/* Real-time model */
RT_MODEL_sl_drivepoint_T sl_drivepoint_M_;
RT_MODEL_sl_drivepoint_T *const sl_drivepoint_M = &sl_drivepoint_M_;

/*
 * This function updates continuous states using the ODE3 fixed-step
 * solver algorithm
 */
static void rt_ertODEUpdateContinuousStates(RTWSolverInfo *si )
{
  /* Solver Matrices */
  static const real_T rt_ODE3_A[3] = {
    1.0/2.0, 3.0/4.0, 1.0
  };

  static const real_T rt_ODE3_B[3][3] = {
    { 1.0/2.0, 0.0, 0.0 },

    { 0.0, 3.0/4.0, 0.0 },

    { 2.0/9.0, 1.0/3.0, 4.0/9.0 }
  };

  time_T t = rtsiGetT(si);
  time_T tnew = rtsiGetSolverStopTime(si);
  time_T h = rtsiGetStepSize(si);
  real_T *x = rtsiGetContStates(si);
  ODE3_IntgData *id = (ODE3_IntgData *)rtsiGetSolverData(si);
  real_T *y = id->y;
  real_T *f0 = id->f[0];
  real_T *f1 = id->f[1];
  real_T *f2 = id->f[2];
  real_T hB[3];
  int_T i;
  int_T nXc = 3;
  rtsiSetSimTimeStep(si,MINOR_TIME_STEP);

  /* Save the state values at time t in y, we'll use x as ynew. */
  (void) memcpy(y, x,
                (uint_T)nXc*sizeof(real_T));

  /* Assumes that rtsiSetT and ModelOutputs are up-to-date */
  /* f0 = f(t,y) */
  rtsiSetdX(si, f0);
  sl_drivepoint_derivatives();

  /* f(:,2) = feval(odefile, t + hA(1), y + f*hB(:,1), args(:)(*)); */
  hB[0] = h * rt_ODE3_B[0][0];
  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0]);
  }

  rtsiSetT(si, t + h*rt_ODE3_A[0]);
  rtsiSetdX(si, f1);
  sl_drivepoint_step();
  sl_drivepoint_derivatives();

  /* f(:,3) = feval(odefile, t + hA(2), y + f*hB(:,2), args(:)(*)); */
  for (i = 0; i <= 1; i++) {
    hB[i] = h * rt_ODE3_B[1][i];
  }

  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0] + f1[i]*hB[1]);
  }

  rtsiSetT(si, t + h*rt_ODE3_A[1]);
  rtsiSetdX(si, f2);
  sl_drivepoint_step();
  sl_drivepoint_derivatives();

  /* tnew = t + hA(3);
     ynew = y + f*hB(:,3); */
  for (i = 0; i <= 2; i++) {
    hB[i] = h * rt_ODE3_B[2][i];
  }

  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0] + f1[i]*hB[1] + f2[i]*hB[2]);
  }

  rtsiSetT(si, tnew);
  rtsiSetSimTimeStep(si,MAJOR_TIME_STEP);
}

real_T rt_powd_snf(real_T u0, real_T u1)
{
  real_T y;
  real_T tmp;
  real_T tmp_0;
  if (rtIsNaN(u0) || rtIsNaN(u1)) {
    y = (rtNaN);
  } else {
    tmp = fabs(u0);
    tmp_0 = fabs(u1);
    if (rtIsInf(u1)) {
      if (tmp == 1.0) {
        y = (rtNaN);
      } else if (tmp > 1.0) {
        if (u1 > 0.0) {
          y = (rtInf);
        } else {
          y = 0.0;
        }
      } else if (u1 > 0.0) {
        y = 0.0;
      } else {
        y = (rtInf);
      }
    } else if (tmp_0 == 0.0) {
      y = 1.0;
    } else if (tmp_0 == 1.0) {
      if (u1 > 0.0) {
        y = u0;
      } else {
        y = 1.0 / u0;
      }
    } else if (u1 == 2.0) {
      y = u0 * u0;
    } else if ((u1 == 0.5) && (u0 >= 0.0)) {
      y = sqrt(u0);
    } else if ((u0 < 0.0) && (u1 > floor(u1))) {
      y = (rtNaN);
    } else {
      y = pow(u0, u1);
    }
  }

  return y;
}

real_T rt_atan2d_snf(real_T u0, real_T u1)
{
  real_T y;
  int32_T u0_0;
  int32_T u1_0;
  if (rtIsNaN(u0) || rtIsNaN(u1)) {
    y = (rtNaN);
  } else if (rtIsInf(u0) && rtIsInf(u1)) {
    if (u0 > 0.0) {
      u0_0 = 1;
    } else {
      u0_0 = -1;
    }

    if (u1 > 0.0) {
      u1_0 = 1;
    } else {
      u1_0 = -1;
    }

    y = atan2(u0_0, u1_0);
  } else if (u1 == 0.0) {
    if (u0 > 0.0) {
      y = RT_PI / 2.0;
    } else if (u0 < 0.0) {
      y = -(RT_PI / 2.0);
    } else {
      y = 0.0;
    }
  } else {
    y = atan2(u0, u1);
  }

  return y;
}

real_T rt_roundd_snf(real_T u)
{
  real_T y;
  if (fabs(u) < 4.503599627370496E+15) {
    if (u >= 0.5) {
      y = floor(u + 0.5);
    } else if (u > -0.5) {
      y = u * 0.0;
    } else {
      y = ceil(u - 0.5);
    }
  } else {
    y = u;
  }

  return y;
}

/* Model step function */
void sl_drivepoint_step(void)
{
  real_T deltaT;
  real_T riseValLimit;
  real_T rateLimiterRate;
  real_T rtb_Sum_idx_0;
  real_T rtb_Sum_idx_1;
  if (rtmIsMajorTimeStep(sl_drivepoint_M)) {
    /* set solver stop time */
    if (!(sl_drivepoint_M->Timing.clockTick0+1)) {
      rtsiSetSolverStopTime(&sl_drivepoint_M->solverInfo,
                            ((sl_drivepoint_M->Timing.clockTickH0 + 1) *
        sl_drivepoint_M->Timing.stepSize0 * 4294967296.0));
    } else {
      rtsiSetSolverStopTime(&sl_drivepoint_M->solverInfo,
                            ((sl_drivepoint_M->Timing.clockTick0 + 1) *
        sl_drivepoint_M->Timing.stepSize0 + sl_drivepoint_M->Timing.clockTickH0 *
        sl_drivepoint_M->Timing.stepSize0 * 4294967296.0));
    }
  }                                    /* end MajorTimeStep */

  /* Update absolute time of base rate at minor time step */
  if (rtmIsMinorTimeStep(sl_drivepoint_M)) {
    sl_drivepoint_M->Timing.t[0] = rtsiGetT(&sl_drivepoint_M->solverInfo);
  }

  /* Integrator: '<S1>/Integrator' */
  if (rtmIsMajorTimeStep(sl_drivepoint_M)) {
    ZCEventType zcEvent;
    zcEvent = rt_ZCFcn(ANY_ZERO_CROSSING,
                       &sl_drivepoint_PrevZCX.Integrator_Reset_ZCE,
                       sl_drivepoint_P.Bicycle_handbrake);

    /* evaluate zero-crossings and the level of the reset signal */
    if (zcEvent || sl_drivepoint_P.Bicycle_handbrake != 0.0) {
      sl_drivepoint_X.Integrator_CSTATE[0] = sl_drivepoint_P.x0[0];
      sl_drivepoint_X.Integrator_CSTATE[1] = sl_drivepoint_P.x0[1];
      sl_drivepoint_X.Integrator_CSTATE[2] = sl_drivepoint_P.x0[2];
    }
  }

  sl_drivepoint_B.Integrator[0] = sl_drivepoint_X.Integrator_CSTATE[0];
  sl_drivepoint_B.Integrator[1] = sl_drivepoint_X.Integrator_CSTATE[1];
  sl_drivepoint_B.Integrator[2] = sl_drivepoint_X.Integrator_CSTATE[2];

  /* Outport: '<Root>/xy' */
  sl_drivepoint_Y.xy[0] = sl_drivepoint_B.Integrator[0];
  sl_drivepoint_Y.xy[1] = sl_drivepoint_B.Integrator[1];

  /* Outport: '<Root>/theta ' */
  sl_drivepoint_Y.theta = sl_drivepoint_B.Integrator[2];
  if (rtmIsMajorTimeStep(sl_drivepoint_M)) {
  }

  /* Sum: '<Root>/Sum' incorporates:
   *  Constant: '<Root>/Goal'
   */
  rtb_Sum_idx_0 = sl_drivepoint_P.xg[0] - sl_drivepoint_B.Integrator[0];
  rtb_Sum_idx_1 = sl_drivepoint_P.xg[1] - sl_drivepoint_B.Integrator[1];

  /* Fcn: '<Root>/throttle' */
  deltaT = rt_powd_snf(rtb_Sum_idx_0, 2.0) + rt_powd_snf(rtb_Sum_idx_1, 2.0);
  if (deltaT < 0.0) {
    deltaT = -sqrt(-deltaT);
  } else {
    deltaT = sqrt(deltaT);
  }

  /* End of Fcn: '<Root>/throttle' */

  /* Gain: '<Root>/Gain' */
  sl_drivepoint_B.Gain = sl_drivepoint_P.Gain_Gain * deltaT;
  if (rtmIsMajorTimeStep(sl_drivepoint_M)) {
  }

  /* MATLAB Function: '<Root>/MATLAB Function' incorporates:
   *  Fcn: '<Root>/steering'
   */
  /* MATLAB Function 'MATLAB Function': '<S2>:1' */
  /* '<S2>:1:12' */
  /* '<S2>:1:16' */
  rtb_Sum_idx_0 = ((rt_atan2d_snf(rtb_Sum_idx_1, rtb_Sum_idx_0) -
                    sl_drivepoint_B.Integrator[2]) + 3.1415926535897931) /
    6.2831853071795862;
  if (fabs(rtb_Sum_idx_0 - rt_roundd_snf(rtb_Sum_idx_0)) <=
      2.2204460492503131E-16 * fabs(rtb_Sum_idx_0)) {
    rtb_Sum_idx_0 = 0.0;
  } else {
    rtb_Sum_idx_0 = (rtb_Sum_idx_0 - floor(rtb_Sum_idx_0)) * 6.2831853071795862;
  }

  /* Saturate: '<S1>/vel limit' */
  if (sl_drivepoint_B.Gain > sl_drivepoint_P.Bicycle_vlim) {
    rtb_Sum_idx_1 = sl_drivepoint_P.Bicycle_vlim;
  } else if (sl_drivepoint_B.Gain < -sl_drivepoint_P.Bicycle_vlim) {
    rtb_Sum_idx_1 = -sl_drivepoint_P.Bicycle_vlim;
  } else {
    rtb_Sum_idx_1 = sl_drivepoint_B.Gain;
  }

  /* End of Saturate: '<S1>/vel limit' */

  /* RateLimiter: '<S1>/acceleration limit' */
  if (sl_drivepoint_DW.LastMajorTime == (rtInf)) {
    sl_drivepoint_B.accelerationlimit = rtb_Sum_idx_1;
  } else {
    deltaT = sl_drivepoint_M->Timing.t[0] - sl_drivepoint_DW.LastMajorTime;
    riseValLimit = deltaT * sl_drivepoint_P.Bicycle_accel;
    rateLimiterRate = rtb_Sum_idx_1 - sl_drivepoint_DW.PrevY;
    if (rateLimiterRate > riseValLimit) {
      sl_drivepoint_B.accelerationlimit = sl_drivepoint_DW.PrevY + riseValLimit;
    } else {
      deltaT *= -sl_drivepoint_P.Bicycle_accel;
      if (rateLimiterRate < deltaT) {
        sl_drivepoint_B.accelerationlimit = sl_drivepoint_DW.PrevY + deltaT;
      } else {
        sl_drivepoint_B.accelerationlimit = rtb_Sum_idx_1;
      }
    }
  }

  /* End of RateLimiter: '<S1>/acceleration limit' */

  /* Product: '<S1>/Product' incorporates:
   *  Trigonometry: '<S1>/Trigonometric Function'
   *  Trigonometry: '<S1>/Trigonometric Function2'
   */
  sl_drivepoint_B.Product[0] = cos(sl_drivepoint_B.Integrator[2]) *
    sl_drivepoint_B.accelerationlimit;
  sl_drivepoint_B.Product[1] = sin(sl_drivepoint_B.Integrator[2]) *
    sl_drivepoint_B.accelerationlimit;

  /* Gain: '<Root>/Kh' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function'
   */
  rtb_Sum_idx_0 = (rtb_Sum_idx_0 - 3.1415926535897931) * sl_drivepoint_P.Kh_Gain;

  /* Saturate: '<S1>/steering angle limit' */
  if (rtb_Sum_idx_0 > sl_drivepoint_P.Bicycle_alim) {
    rtb_Sum_idx_0 = sl_drivepoint_P.Bicycle_alim;
  } else {
    if (rtb_Sum_idx_0 < -sl_drivepoint_P.Bicycle_alim) {
      rtb_Sum_idx_0 = -sl_drivepoint_P.Bicycle_alim;
    }
  }

  /* Product: '<S1>/Product' incorporates:
   *  Fcn: '<S1>/Fcn'
   *  Saturate: '<S1>/steering angle limit'
   */
  sl_drivepoint_B.Product[2] = tan(rtb_Sum_idx_0) *
    sl_drivepoint_B.accelerationlimit;
  if (rtmIsMajorTimeStep(sl_drivepoint_M)) {
    /* Matfile logging */
    rt_UpdateTXYLogVars(sl_drivepoint_M->rtwLogInfo, (sl_drivepoint_M->Timing.t));
  }                                    /* end MajorTimeStep */

  if (rtmIsMajorTimeStep(sl_drivepoint_M)) {
    /* Update for RateLimiter: '<S1>/acceleration limit' */
    sl_drivepoint_DW.PrevY = sl_drivepoint_B.accelerationlimit;
    sl_drivepoint_DW.LastMajorTime = sl_drivepoint_M->Timing.t[0];
  }                                    /* end MajorTimeStep */

  if (rtmIsMajorTimeStep(sl_drivepoint_M)) {
    /* signal main to stop simulation */
    {                                  /* Sample time: [0.0s, 0.0s] */
      if ((rtmGetTFinal(sl_drivepoint_M)!=-1) &&
          !((rtmGetTFinal(sl_drivepoint_M)-(((sl_drivepoint_M->Timing.clockTick1
               +sl_drivepoint_M->Timing.clockTickH1* 4294967296.0)) * 0.3)) >
            (((sl_drivepoint_M->Timing.clockTick1+
               sl_drivepoint_M->Timing.clockTickH1* 4294967296.0)) * 0.3) *
            (DBL_EPSILON))) {
        rtmSetErrorStatus(sl_drivepoint_M, "Simulation finished");
      }
    }

    rt_ertODEUpdateContinuousStates(&sl_drivepoint_M->solverInfo);

    /* Update absolute time for base rate */
    /* The "clockTick0" counts the number of times the code of this task has
     * been executed. The absolute time is the multiplication of "clockTick0"
     * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
     * overflow during the application lifespan selected.
     * Timer of this task consists of two 32 bit unsigned integers.
     * The two integers represent the low bits Timing.clockTick0 and the high bits
     * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
     */
    if (!(++sl_drivepoint_M->Timing.clockTick0)) {
      ++sl_drivepoint_M->Timing.clockTickH0;
    }

    sl_drivepoint_M->Timing.t[0] = rtsiGetSolverStopTime
      (&sl_drivepoint_M->solverInfo);

    {
      /* Update absolute timer for sample time: [0.3s, 0.0s] */
      /* The "clockTick1" counts the number of times the code of this task has
       * been executed. The resolution of this integer timer is 0.3, which is the step size
       * of the task. Size of "clockTick1" ensures timer will not overflow during the
       * application lifespan selected.
       * Timer of this task consists of two 32 bit unsigned integers.
       * The two integers represent the low bits Timing.clockTick1 and the high bits
       * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
       */
      sl_drivepoint_M->Timing.clockTick1++;
      if (!sl_drivepoint_M->Timing.clockTick1) {
        sl_drivepoint_M->Timing.clockTickH1++;
      }
    }
  }                                    /* end MajorTimeStep */
}

/* Derivatives for root system: '<Root>' */
void sl_drivepoint_derivatives(void)
{
  /* Derivatives for Integrator: '<S1>/Integrator' */
  {
    if (sl_drivepoint_P.Bicycle_handbrake== 0.0) {
      ((XDot_sl_drivepoint_T *) sl_drivepoint_M->ModelData.derivs)
        ->Integrator_CSTATE[0] = sl_drivepoint_B.Product[0];
    } else {
      /* level reset is active*/
      ((XDot_sl_drivepoint_T *) sl_drivepoint_M->ModelData.derivs)
        ->Integrator_CSTATE[0] = 0.0;
    }

    if (sl_drivepoint_P.Bicycle_handbrake== 0.0) {
      ((XDot_sl_drivepoint_T *) sl_drivepoint_M->ModelData.derivs)
        ->Integrator_CSTATE[1] = sl_drivepoint_B.Product[1];
    } else {
      /* level reset is active*/
      ((XDot_sl_drivepoint_T *) sl_drivepoint_M->ModelData.derivs)
        ->Integrator_CSTATE[1] = 0.0;
    }

    if (sl_drivepoint_P.Bicycle_handbrake== 0.0) {
      ((XDot_sl_drivepoint_T *) sl_drivepoint_M->ModelData.derivs)
        ->Integrator_CSTATE[2] = sl_drivepoint_B.Product[2];
    } else {
      /* level reset is active*/
      ((XDot_sl_drivepoint_T *) sl_drivepoint_M->ModelData.derivs)
        ->Integrator_CSTATE[2] = 0.0;
    }
  }
}

/* Model initialize function */
void sl_drivepoint_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)sl_drivepoint_M, 0,
                sizeof(RT_MODEL_sl_drivepoint_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&sl_drivepoint_M->solverInfo,
                          &sl_drivepoint_M->Timing.simTimeStep);
    rtsiSetTPtr(&sl_drivepoint_M->solverInfo, &rtmGetTPtr(sl_drivepoint_M));
    rtsiSetStepSizePtr(&sl_drivepoint_M->solverInfo,
                       &sl_drivepoint_M->Timing.stepSize0);
    rtsiSetdXPtr(&sl_drivepoint_M->solverInfo,
                 &sl_drivepoint_M->ModelData.derivs);
    rtsiSetContStatesPtr(&sl_drivepoint_M->solverInfo, (real_T **)
                         &sl_drivepoint_M->ModelData.contStates);
    rtsiSetNumContStatesPtr(&sl_drivepoint_M->solverInfo,
      &sl_drivepoint_M->Sizes.numContStates);
    rtsiSetErrorStatusPtr(&sl_drivepoint_M->solverInfo, (&rtmGetErrorStatus
      (sl_drivepoint_M)));
    rtsiSetRTModelPtr(&sl_drivepoint_M->solverInfo, sl_drivepoint_M);
  }

  rtsiSetSimTimeStep(&sl_drivepoint_M->solverInfo, MAJOR_TIME_STEP);
  sl_drivepoint_M->ModelData.intgData.y = sl_drivepoint_M->ModelData.odeY;
  sl_drivepoint_M->ModelData.intgData.f[0] = sl_drivepoint_M->ModelData.odeF[0];
  sl_drivepoint_M->ModelData.intgData.f[1] = sl_drivepoint_M->ModelData.odeF[1];
  sl_drivepoint_M->ModelData.intgData.f[2] = sl_drivepoint_M->ModelData.odeF[2];
  sl_drivepoint_M->ModelData.contStates = ((X_sl_drivepoint_T *)
    &sl_drivepoint_X);
  rtsiSetSolverData(&sl_drivepoint_M->solverInfo, (void *)
                    &sl_drivepoint_M->ModelData.intgData);
  rtsiSetSolverName(&sl_drivepoint_M->solverInfo,"ode3");
  rtmSetTPtr(sl_drivepoint_M, &sl_drivepoint_M->Timing.tArray[0]);
  rtmSetTFinal(sl_drivepoint_M, 15.0);
  sl_drivepoint_M->Timing.stepSize0 = 0.3;

  /* Setup for data logging */
  {
    static RTWLogInfo rt_DataLoggingInfo;
    sl_drivepoint_M->rtwLogInfo = &rt_DataLoggingInfo;
  }

  /* Setup for data logging */
  {
    rtliSetLogXSignalInfo(sl_drivepoint_M->rtwLogInfo, (NULL));
    rtliSetLogXSignalPtrs(sl_drivepoint_M->rtwLogInfo, (NULL));
    rtliSetLogT(sl_drivepoint_M->rtwLogInfo, "tout");
    rtliSetLogX(sl_drivepoint_M->rtwLogInfo, "");
    rtliSetLogXFinal(sl_drivepoint_M->rtwLogInfo, "");
    rtliSetLogVarNameModifier(sl_drivepoint_M->rtwLogInfo, "none");
    rtliSetLogFormat(sl_drivepoint_M->rtwLogInfo, 0);
    rtliSetLogMaxRows(sl_drivepoint_M->rtwLogInfo, 0);
    rtliSetLogDecimation(sl_drivepoint_M->rtwLogInfo, 1);

    /*
     * Set pointers to the data and signal info for each output
     */
    {
      static void * rt_LoggedOutputSignalPtrs[] = {
        &sl_drivepoint_Y.xy[0],
        &sl_drivepoint_Y.theta
      };

      rtliSetLogYSignalPtrs(sl_drivepoint_M->rtwLogInfo, ((LogSignalPtrsType)
        rt_LoggedOutputSignalPtrs));
    }

    {
      static int_T rt_LoggedOutputWidths[] = {
        2,
        1
      };

      static int_T rt_LoggedOutputNumDimensions[] = {
        1,
        1
      };

      static int_T rt_LoggedOutputDimensions[] = {
        2,
        1
      };

      static boolean_T rt_LoggedOutputIsVarDims[] = {
        0,
        0
      };

      static void* rt_LoggedCurrentSignalDimensions[] = {
        (NULL),
        (NULL)
      };

      static int_T rt_LoggedCurrentSignalDimensionsSize[] = {
        4,
        4
      };

      static BuiltInDTypeId rt_LoggedOutputDataTypeIds[] = {
        SS_DOUBLE,
        SS_DOUBLE
      };

      static int_T rt_LoggedOutputComplexSignals[] = {
        0,
        0
      };

      static const char_T *rt_LoggedOutputLabels[] = {
        "",
        "theta" };

      static const char_T *rt_LoggedOutputBlockNames[] = {
        "sl_drivepoint/xy",
        "sl_drivepoint/theta " };

      static RTWLogDataTypeConvert rt_RTWLogDataTypeConvert[] = {
        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 }
      };

      static RTWLogSignalInfo rt_LoggedOutputSignalInfo[] = {
        {
          2,
          rt_LoggedOutputWidths,
          rt_LoggedOutputNumDimensions,
          rt_LoggedOutputDimensions,
          rt_LoggedOutputIsVarDims,
          rt_LoggedCurrentSignalDimensions,
          rt_LoggedCurrentSignalDimensionsSize,
          rt_LoggedOutputDataTypeIds,
          rt_LoggedOutputComplexSignals,
          (NULL),

          { rt_LoggedOutputLabels },
          (NULL),
          (NULL),
          (NULL),

          { rt_LoggedOutputBlockNames },

          { (NULL) },
          (NULL),
          rt_RTWLogDataTypeConvert
        }
      };

      rtliSetLogYSignalInfo(sl_drivepoint_M->rtwLogInfo,
                            rt_LoggedOutputSignalInfo);

      /* set currSigDims field */
      rt_LoggedCurrentSignalDimensions[0] = &rt_LoggedOutputWidths[0];
      rt_LoggedCurrentSignalDimensions[1] = &rt_LoggedOutputWidths[1];
    }

    rtliSetLogY(sl_drivepoint_M->rtwLogInfo, "yout");
  }

  /* block I/O */
  (void) memset(((void *) &sl_drivepoint_B), 0,
                sizeof(B_sl_drivepoint_T));

  /* states (continuous) */
  {
    (void) memset((void *)&sl_drivepoint_X, 0,
                  sizeof(X_sl_drivepoint_T));
  }

  /* states (dwork) */
  (void) memset((void *)&sl_drivepoint_DW, 0,
                sizeof(DW_sl_drivepoint_T));

  /* external outputs */
  (void) memset((void *)&sl_drivepoint_Y, 0,
                sizeof(ExtY_sl_drivepoint_T));

  /* Initialize DataMapInfo substructure containing ModelMap for C API */
  sl_drivepoint_InitializeDataMapInfo(sl_drivepoint_M);

  /* Matfile logging */
  rt_StartDataLoggingWithStartTime(sl_drivepoint_M->rtwLogInfo, 0.0,
    rtmGetTFinal(sl_drivepoint_M), sl_drivepoint_M->Timing.stepSize0,
    (&rtmGetErrorStatus(sl_drivepoint_M)));
  sl_drivepoint_PrevZCX.Integrator_Reset_ZCE = UNINITIALIZED_ZCSIG;

  /* InitializeConditions for Integrator: '<S1>/Integrator' */
  sl_drivepoint_X.Integrator_CSTATE[0] = sl_drivepoint_P.x0[0];
  sl_drivepoint_X.Integrator_CSTATE[1] = sl_drivepoint_P.x0[1];
  sl_drivepoint_X.Integrator_CSTATE[2] = sl_drivepoint_P.x0[2];

  /* InitializeConditions for RateLimiter: '<S1>/acceleration limit' */
  sl_drivepoint_DW.LastMajorTime = (rtInf);
}

/* Model terminate function */
void sl_drivepoint_terminate(void)
{
  /* (no terminate code required) */
}
