/*
 * builtin_typeid_types.h
 *
 * Code generation for model "sl_drivepoint".
 *
 * Model version              : 1.26
 * Simulink Coder version : 8.6 (R2014a) 27-Dec-2013
 * C source code generated on : Fri Mar 09 13:20:13 2018
 */

#ifndef __BUILTIN_TYPEID_TYPES_H__
#define __BUILTIN_TYPEID_TYPES_H__
#include "rtwtypes.h"
#ifndef __BUILTIN_TYPEID_TYPES__
#define __BUILTIN_TYPEID_TYPES__

/* Enumeration of built-in data types */
typedef enum {
  SS_DOUBLE = 0,                       /* real_T    */
  SS_SINGLE = 1,                       /* real32_T  */
  SS_INT8 = 2,                         /* int8_T    */
  SS_UINT8 = 3,                        /* uint8_T   */
  SS_INT16 = 4,                        /* int16_T   */
  SS_UINT16 = 5,                       /* uint16_T  */
  SS_INT32 = 6,                        /* int32_T   */
  SS_UINT32 = 7,                       /* uint32_T  */
  SS_BOOLEAN = 8                       /* boolean_T */
} BuiltInDTypeId;

#define SS_NUM_BUILT_IN_DTYPE          ((int_T)SS_BOOLEAN+1)

/* Enumeration for MAT-file logging code */
typedef int_T DTypeId;

#endif                                 /* __BUILTIN_TYPEID_TYPES__ */
#endif                                 /* __BUILTIN_TYPEID_TYPES_H__ */
