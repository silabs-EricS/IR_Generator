/***************************************************************************//**
 * @brief ir_generate.h
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
#ifndef __IRGENELATE_H__
#define __IRGENELATE_H__
#include "em_gpio.h"
#include "em_timer.h"

/*----------------------------------------------
  define / Typedef
  ----------------------------------------------*/
#define BSP_CARRIER_PORT	gpioPortD
#define BSP_CARRIER_PIN		2

#define BSP_MODULATION_PORT	gpioPortD
#define BSP_MODULATION_PIN	3

#define TABLE_INDEX_NUM					18
#define NEC_REPEAT_HEAD_SPACE_BIT_SIZE	4
#define BIT(n)							(1<<n)
#define STREAM_BIT_NUM					(200)

typedef enum {
  CODE_NEC,
  CODE_SONY,
  CODE_NUM
}code_t;

typedef enum {
  HEAD_PULSE,
  HEAD_SPACE,
  HEAD_NUM
}head_t;

typedef struct {
  code_t code;
  uint16_t carrier[CODE_NUM];
  uint16_t timebase[CODE_NUM];
  float dutycycle[CODE_NUM];
  uint8_t head_bit_size[CODE_NUM][HEAD_NUM];
  uint8_t address_length[CODE_NUM];
  uint8_t command_length[CODE_NUM];

  uint8_t index;
  uint8_t stream_index;
  bool stream_active;
  bool stream[STREAM_BIT_NUM];
}ir_t;

typedef void (*ir_callback_t)(void);


/*----------------------------------------------
  prototype
  ----------------------------------------------*/
extern const uint8_t ir_table[TABLE_INDEX_NUM][2];

/**
 * @brief Initializes IR generation with IR code/protocol.
 *
 * @param ir_code instance of ir_generate_init to initialize
 *
 * @return none
 *
 */
extern void ir_generate_init(code_t ir_code,ir_callback_t cb);

/**
 * @brief stop ir signal generate.
 *
 * @param none
 *
 * @return none
 *
 */
extern void ir_generate_stop(void);
/**
 * @brief configure ir signal stream.
 *
 * @param none
 *
 * @return none
 *
 */
extern void ir_generate_stream(uint16_t address, uint16_t command, bool repeat);
#endif
