/***************************************************************************//**
 * @brief key_scan.h
 *******************************************************************************
 * # License
 * <b>Copyright 2018 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/
#ifndef _KEYSCAN_H
#define _KEYSCAN_H

/*****************   INCLUDES  **********************************************************/
#include <stdbool.h>
#include "em_gpio.h"
/***************** END OF INCLUDES *****************************************************/

/*****************   DEFINITIONS  *****************************************************/
/*------------------------------------------------------------------------------------*/
#define KEY_ROW_NUM			4
#define KEY_COLUMN_NUM		4

#define KEY_ROW_PINS		{{gpioPortB, 0}, {gpioPortB, 1}, {gpioPortB, 2}, {gpioPortB, 3}}
#define KEY_COLUMN_PINS		{{gpioPortC, 0}, {gpioPortC, 1}, {gpioPortC, 2}, {gpioPortC, 3}}

typedef struct {
  GPIO_Port_TypeDef   port;
  unsigned int        pin;
} key_io_t;

typedef enum {
 KEY_TIME_SHORT 			= 5,
 KEY_TIME_CONTINUE_OFFSET	= 30,
 KEY_TIME_CONTINUE_START	= 80,
 KEY_TIME_LONG				= 200,
 KEY_TIME_SUPER_LONG		= 1000,
 KEY_TIME_OVER
}key_time_t;

typedef enum {
  KEY_NONE,
  KEY_CODE01,
  KEY_CODE02,
  KEY_CODE03,
  KEY_CODE04,
  KEY_CODE05,
  KEY_CODE06,
  KEY_CODE07,
  KEY_CODE08,
  KEY_CODE09,
  KEY_CODE10,
  KEY_CODE11,
  KEY_CODE12,
  KEY_CODE13,
  KEY_CODE14,
  KEY_CODE15,
  KEY_CODE16,
  KEY_CODE17,
  KEY_CODE18,
  KEY_CODE_NUM
}key_code_t;
/***************** END OF DEFINITIONS ***************************************************/

/*****************    ENUM  /STRUCT******************************************************/
typedef struct {
 uint8_t value;
 uint8_t last_value;
 uint16_t press_10ms;
 bool pressed;
}key_scan_t;

typedef void (*key_callback_t)(key_code_t key);
typedef void (*key_wakeup_callback_t)(uint8_t pin);
/**
 * @brief Initializes key matrix.
 *
 * @param none
 *
 * @return none
 *
 */
extern void key_init(key_callback_t cb, key_wakeup_callback_t wakeup_cb);

/**
 * @brief Implement key matrix scan
 *
 * @param none
 *
 * @return none
 *
 */
extern void key_scan(void);

#endif

