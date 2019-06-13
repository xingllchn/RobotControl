/*
 * sl_drivepoint.h
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
#ifndef RTW_HEADER_sl_drivepoint_h_
#define RTW_HEADER_sl_drivepoint_h_
#include <math.h>
#include <float.h>
#include <string.h>
#include <stddef.h>
#include "rtw_modelmap.h"
#ifndef sl_drivepoint_COMMON_INCLUDES_
# define sl_drivepoint_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "rt_logging.h"
#endif                                 /* sl_drivepoint_COMMON_INCLUDES_ */

#include "sl_drivepoint_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rtGetInf.h"
#include "rt_nonfinite.h"
#include "rt_zcfcn.h"
#include "rt_defines.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetBlkStateChangeFlag
# define rtmGetBlkStateChangeFlag(rtm) ((rtm)->ModelData.blkStateChange)
#endif

#ifndef rtmSetBlkStateChangeFlag
# define rtmSetBlkStateChangeFlag(rtm, val) ((rtm)->ModelData.blkStateChange = (val))
#endif

#ifndef rtmGetContStateDisabled
# define rtmGetContStateDisabled(rtm)  ((rtm)->ModelData.contStateDisabled)
#endif

#ifndef rtmSetContStateDisabled
# define rtmSetContStateDisabled(rtm, val) ((rtm)->ModelData.contStateDisabled = (val))
#endif

#ifndef rtmGetContStates
# define rtmGetContStates(rtm)         ((rtm)->ModelData.contStates)
#endif

#ifndef rtmSetContStates
# define rtmSetContStates(rtm, val)    ((rtm)->ModelData.contStates = (val))
#endif

#ifndef rtmGetDataMapInfo
# define rtmGetDataMapInfo(rtm)        ((rtm)->DataMapInfo)
#endif

#ifndef rtmSetDataMapInfo
# define rtmSetDataMapInfo(rtm, val)   ((rtm)->DataMapInfo = (val))
#endif

#ifndef rtmGetDerivCacheNeedsReset
# define rtmGetDerivCacheNeedsReset(rtm) ((rtm)->ModelData.derivCacheNeedsReset)
#endif

#ifndef rtmSetDerivCacheNeedsReset
# define rtmSetDerivCacheNeedsReset(rtm, val) ((rtm)->ModelData.derivCacheNeedsReset = (val))
#endif

#ifndef rtmGetFinalTime
# define rtmGetFinalTime(rtm)          ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetIntgData
# define rtmGetIntgData(rtm)           ((rtm)->ModelData.intgData)
#endif

#ifndef rtmSetIntgData
# define rtmSetIntgData(rtm, val)      ((rtm)->ModelData.intgData = (val))
#endif

#ifndef rtmGetOdeF
# define rtmGetOdeF(rtm)               ((rtm)->ModelData.odeF)
#endif

#ifndef rtmSetOdeF
# define rtmSetOdeF(rtm, val)          ((rtm)->ModelData.odeF = (val))
#endif

#ifndef rtmGetOdeY
# define rtmGetOdeY(rtm)               ((rtm)->ModelData.odeY)
#endif

#ifndef rtmSetOdeY
# define rtmSetOdeY(rtm, val)          ((rtm)->ModelData.odeY = (val))
#endif

#ifndef rtmGetRTWLogInfo
# define rtmGetRTWLogInfo(rtm)         ((rtm)->rtwLogInfo)
#endif

#ifndef rtmGetZCCacheNeedsReset
# define rtmGetZCCacheNeedsReset(rtm)  ((rtm)->ModelData.zCCacheNeedsReset)
#endif

#ifndef rtmSetZCCacheNeedsReset
# define rtmSetZCCacheNeedsReset(rtm, val) ((rtm)->ModelData.zCCacheNeedsReset = (val))
#endif

#ifndef rtmGetdX
# define rtmGetdX(rtm)                 ((rtm)->ModelData.derivs)
#endif

#ifndef rtmSetdX
# define rtmSetdX(rtm, val)            ((rtm)->ModelData.derivs = (val))
#endif

#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetStopRequested
# define rtmGetStopRequested(rtm)      ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
# define rtmSetStopRequested(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
# define rtmGetStopRequestedPtr(rtm)   (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
# define rtmGetT(rtm)                  (rtmGetTPtr((rtm))[0])
#endif

#ifndef rtmGetTFinal
# define rtmGetTFinal(rtm)             ((rtm)->Timing.tFinal)
#endif

/* Block signals (auto storage) */
typedef struct {
  real_T Integrator[3];                /* '<S1>/Integrator' */
  real_T Gain;                         /* '<Root>/Gain' */
  real_T accelerationlimit;            /* '<S1>/acceleration limit' */
  real_T Product[3];                   /* '<S1>/Product' */
} B_sl_drivepoint_T;

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  real_T PrevY;                        /* '<S1>/acceleration limit' */
  real_T LastMajorTime;                /* '<S1>/acceleration limit' */
  struct {
    void *LoggedData;
  } theta_PWORK;                       /* '<Root>/theta' */

  struct {
    void *LoggedData;
  } v_PWORK;                           /* '<Root>/v' */
} DW_sl_drivepoint_T;

/* Continuous states (auto storage) */
typedef struct {
  real_T Integrator_CSTATE[3];         /* '<S1>/Integrator' */
} X_sl_drivepoint_T;

/* State derivatives (auto storage) */
typedef struct {
  real_T Integrator_CSTATE[3];         /* '<S1>/Integrator' */
} XDot_sl_drivepoint_T;

/* State disabled  */
typedef struct {
  boolean_T Integrator_CSTATE[3];      /* '<S1>/Integrator' */
} XDis_sl_drivepoint_T;

/* Zero-crossing (trigger) state */
typedef struct {
  ZCSigState Integrator_Reset_ZCE;     /* '<S1>/Integrator' */
} PrevZCX_sl_drivepoint_T;

#ifndef ODE3_INTG
#define ODE3_INTG

/* ODE3 Integration Data */
typedef struct {
  real_T *y;                           /* output */
  real_T *f[3];                        /* derivatives */
} ODE3_IntgData;

#endif

/* External outputs (root outports fed by signals with auto storage) */
typedef struct {
  real_T xy[2];                        /* '<Root>/xy' */
  real_T theta;                        /* '<Root>/theta ' */
} ExtY_sl_drivepoint_T;

/* Parameters (auto storage) */
struct P_sl_drivepoint_T_ {
  real_T x0[3];                        /* Variable: x0
                                        * Referenced by: '<S1>/Integrator'
                                        */
  real_T xg[2];                        /* Variable: xg
                                        * Referenced by: '<Root>/Goal'
                                        */
  real_T Bicycle_accel;                /* Mask Parameter: Bicycle_accel
                                        * Referenced by: '<S1>/acceleration limit'
                                        */
  real_T Bicycle_alim;                 /* Mask Parameter: Bicycle_alim
                                        * Referenced by: '<S1>/steering angle limit'
                                        */
  real_T Bicycle_handbrake;            /* Mask Parameter: Bicycle_handbrake
                                        * Referenced by: '<S1>/Constant'
                                        */
  real_T Bicycle_vlim;                 /* Mask Parameter: Bicycle_vlim
                                        * Referenced by: '<S1>/vel limit'
                                        */
  real_T Gain_Gain;                    /* Expression: 0.5
                                        * Referenced by: '<Root>/Gain'
                                        */
  real_T Kh_Gain;                      /* Expression: 4
                                        * Referenced by: '<Root>/Kh'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_sl_drivepoint_T {
  const char_T *errorStatus;
  RTWLogInfo *rtwLogInfo;
  RTWSolverInfo solverInfo;

  /*
   * DataMapInfo:
   * The following substructure contains information regarding
   * structures generated in the model's C API.
   */
  struct {
    rtwCAPI_ModelMappingInfo mmi;
  } DataMapInfo;

  /*
   * ModelData:
   * The following substructure contains information regarding
   * the data used in the model.
   */
  struct {
    X_sl_drivepoint_T *contStates;
    real_T *derivs;
    boolean_T *contStateDisabled;
    boolean_T zCCacheNeedsReset;
    boolean_T derivCacheNeedsReset;
    boolean_T blkStateChange;
    real_T odeY[3];
    real_T odeF[3][3];
    ODE3_IntgData intgData;
  } ModelData;

  /*
   * Sizes:
   * The following substructure contains sizes information
   * for many of the model attributes such as inputs, outputs,
   * dwork, sample times, etc.
   */
  struct {
    int_T numContStates;
    int_T numSampTimes;
  } Sizes;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick0;
    uint32_T clockTickH0;
    time_T stepSize0;
    uint32_T clockTick1;
    uint32_T clockTickH1;
    time_T tFinal;
    SimTimeStep simTimeStep;
    boolean_T stopRequestedFlag;
    time_T *t;
    time_T tArray[2];
  } Timing;
};

/* Block parameters (auto storage) */
extern P_sl_drivepoint_T sl_drivepoint_P;

/* Block signals (auto storage) */
extern B_sl_drivepoint_T sl_drivepoint_B;

/* Continuous states (auto storage) */
extern X_sl_drivepoint_T sl_drivepoint_X;

/* Block states (auto storage) */
extern DW_sl_drivepoint_T sl_drivepoint_DW;

/* External outputs (root outports fed by signals with auto storage) */
extern ExtY_sl_drivepoint_T sl_drivepoint_Y;

/* External data declarations for dependent source files */

/* Zero-crossing (trigger) state */
extern PrevZCX_sl_drivepoint_T sl_drivepoint_PrevZCX;

/* Model entry point functions */
extern void sl_drivepoint_initialize(void);
extern void sl_drivepoint_step(void);
extern void sl_drivepoint_terminate(void);

/* Function to get C API Model Mapping Static Info */
extern const rtwCAPI_ModelMappingStaticInfo*
  sl_drivepoint_GetCAPIStaticMap(void);

/* Real-time Model object */
extern RT_MODEL_sl_drivepoint_T *const sl_drivepoint_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'sl_drivepoint'
 * '<S1>'   : 'sl_drivepoint/Bicycle'
 * '<S2>'   : 'sl_drivepoint/MATLAB Function'
 * '<S3>'   : 'sl_drivepoint/XY'
 */
#endif                                 /* RTW_HEADER_sl_drivepoint_h_ */
