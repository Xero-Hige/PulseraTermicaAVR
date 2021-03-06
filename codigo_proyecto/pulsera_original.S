#include <avr/io.h>

.section .text
.global main


;Regs:
;r16: Temporal, pasaje de parametro y de retorno
#define Reg_Temporal r16

;r17: Temperatura ambiente
#define Temp_Ambiente r17

;r18: Temperatura peltier
#define Temp_Peltier r18

;r20: Contador
#define Contador r20

;r22: Modo de operacion
#define Modo_Operacion r22

;Constantes:
;Tipos de dato para mandar por serial

#define Dato_Tempe_Ambiente 'A'
#define Dato_Tempe_Peltier  'P'
#define Dato_Num_Iteracion  'I'


main:

	sbi _SFR_IO_ADDR(DDRB),		3 			;(OC2) para salida
	ldi Reg_Temporal,0x71 					;(01110001) Phase correct, no pre escalar, clear on match
	out _SFR_IO_ADDR(TCCR2) ,Reg_Temporal
	

	rcall 	PUENTE_H_Init
	rcall	USART_Init
	;rcall 	READ_ADC 						;leer temperatura ambiente
	rcall	TRANSLATE_TEMP					;obtengo la temperatura
	rcall	GET_MODE						;obtengo el modo de operacion

	mov 	Modo_Operacion,		Reg_Temporal					;Modo_Operacion modo de operacion inicial 

LOOP:
	clr 	Contador		 						;Iteraciones, se usa para saber la diferencia que se debe obtener
	ldi 	r29 , 150						; PWM
	rcall	SET_PWM

REDUCIR_LOOP:

	;rcall 	READ_ADC 						;leer temperatura ambiente
	rcall	TRANSLATE_TEMP					;obtengo la temperatura
	mov		Temp_Ambiente,		Reg_Temporal

	;rcall 	READ_ADC 						;leer temperatura peltier
	rcall	TRANSLATE_TEMP					;obtengo la temperatura
	mov		Temp_Peltier,		Reg_Temporal

	mov		Reg_Temporal,		Contador

	;calcular duty, devuelve el valor en Reg_Temporal, recibe vuelta en Reg_Temporal, ambiente en Temp_Ambiente y peltier en Temp_Peltier

	rcall	SET_PWM

	ldi r26, 20
	rcall ESPERA

	inc 	Contador		 						;Cumpli una vuelta
	ldi 	Reg_Temporal,		6
	cpse 	Contador,		Reg_Temporal					;No saltar si ya ejecuto 5 vueltas

	rjmp	REDUCIR_LOOP					

	ldi 	r29, 		150					; PWM
	rcall 	SET_PWM
	cbi _SFR_IO_ADDR(DDRB),		3 			;(OC2) para salida
	sbi _SFR_IO_ADDR(DDRB),		3 			;(OC2) para salida
	cbi _SFR_IO_ADDR(PORTB), 3

	rcall STANDBY
	rjmp LOOP
	
;SEND SNIPPET
;ldi Reg_Temporal,'A' ;tipo de dato a mandar
;rcall USART_Transmit
;mov Reg_Temporal,Modo_Operacion ;No se, imprimo el modo
;rcall USART_Transmit

;-------------------------------------Funciones---------------------------------------
;-------------------------------------------------------------------------------------
; espera 1 seg y envia 20 veces datos durante ese seg
ESPERA:
	rcall 	DEMORA
	rcall	TRANSMITIR_DATOS
	dec 	r26
	clr 	Reg_Temporal
	cpse	r26, Reg_Temporal
	rjmp ESPERA
	ret


;-------------------------------------------------------------------------------------
PUENTE_H_Init:
	sbi _SFR_IO_ADDR(DDRB),		2 
	sbi _SFR_IO_ADDR(DDRB),		1 			
	sbi _SFR_IO_ADDR(PORTB),	1 			
	cbi _SFR_IO_ADDR(PORTB),	2 			
	ret

;-------------------------------------------------------------------------------------

TRANSMITIR_DATOS:
	ldi 	Reg_Temporal,		0b11000000			; canal 0 temperatura ambiente
	rcall 	READ_ADC 						; leer tension del peltier
	mov		r23,		Reg_Temporal					; guardo la tension

	ldi 	Reg_Temporal,		0b11000001			; canal 1 tension peltier
	rcall 	READ_ADC 						; leer tension del peltier
	mov		r24,		Reg_Temporal					; guardo la tension

	ldi 	Reg_Temporal,		0b11000010			; canal 2 temperatura peltier
	rcall 	READ_ADC 						; leer tension del termistor
	mov		r25,		Reg_Temporal					; guardo la tension

	ldi 	Reg_Temporal,		Dato_Num_Iteracion				;Envio la iteracion
	rcall 	USART_Transmit
	mov 	Reg_Temporal,		Contador 
	rcall 	USART_Transmit
	

	ldi 	Reg_Temporal,		Dato_Tempe_Ambiente 				; tipo de dato a mandar
	rcall 	USART_Transmit
	mov 	Reg_Temporal,		r23
	rcall 	USART_Transmit


	ldi 	Reg_Temporal,		Dato_Tempe_Peltier 				; tipo de dato a mandar
	rcall 	USART_Transmit
	mov 	Reg_Temporal,		r24
	rcall 	USART_Transmit


	ldi 	Reg_Temporal,		'T' 				; tipo de dato a mandar
	rcall 	USART_Transmit
	mov 	Reg_Temporal,		r25
	rcall 	USART_Transmit
	ret


;-------------------------------------------------------------------------------------
;Set PWM
;Setea el pwm del pin OC2 con el tiempo en bajo pasado como parametro
;Reg_Temporal: tiempo en bajo a asignar

SET_PWM:
	;out _SFR_IO_ADDR(OCR2),		Reg_Temporal
	;ldi Reg_Temporal,					0x71 		;(01110001) Phase correct, no pre escalar, clear on match
	;out _SFR_IO_ADDR(TCCR2),	Reg_Temporal
	;ret
	
	out _SFR_IO_ADDR(OCR2),r29
	ldi			r26, 	25
	sub		r29,	r26
	ret


;-------------------------------------------------------------------------------------
;Espera durante 1 segundo
DEMORA:
	ldi 	Reg_Temporal,	0x3C					; solo cuenta hasta 50000					
	out 	_SFR_IO_ADDR(TCNT1H), Reg_Temporal
	ldi 	Reg_Temporal, 	0xAF
	out 	_SFR_IO_ADDR(TCNT1L), Reg_Temporal
	ldi		Reg_Temporal, 4						; 0000 0100 habilita poner en 1 
	out 	_SFR_IO_ADDR(TIFR), Reg_Temporal
	out 	_SFR_IO_ADDR(TIMSK), Reg_Temporal	; el bit 2 de TIRF cuando haya overflow
	ldi 	Reg_Temporal, 0b00000010				; velocidad: clk/8
	out		_SFR_IO_ADDR(TCCR1B), Reg_Temporal
DEMORA_LOOP:
		
	in 		Reg_Temporal, _SFR_IO_ADDR(TIFR)
	sbrs	Reg_Temporal, 2
	rjmp 	DEMORA_LOOP
	
	ldi 	Reg_Temporal, 1
	out 	_SFR_IO_ADDR(TIFR), Reg_Temporal
	clr 	Reg_Temporal							; finalizo contador
	out 	_SFR_IO_ADDR(TIFR), Reg_Temporal
	out		_SFR_IO_ADDR(TCCR1B), Reg_Temporal
		
	ret
	

;-------------------------------------------------------------------------------------
;Standby
;Espera durante 10 segundos
STANDBY:
	ldi r26, 200
	rcall ESPERA
	ret

;-------------------------------------------------------------------------------------
;Change Mode
;Invierte el bit 0 en el registro Modo_Operacion que es el modo de funcionamiento
CHANGE_MODE:								;Atiende la interrupcion de cambio de modo
	inc 	Modo_Operacion								;Invierte el ultimo bit
	rjmp	LOOP

;-------------------------------------------------------------------------------------
;Transmit
;Transmite por el puerto paralelo el dato pasado como parametro
;Reg_Temporal: valor a transmitir

USART_Transmit:
	sbis 	_SFR_IO_ADDR(UCSRA), UDRE 		;Espero a que se libere el UDRE
	rjmp 	USART_Transmit

	out 	_SFR_IO_ADDR(UDR),	Reg_Temporal
	ret

;-------------------------------------------------------------------------------------
;Usart init 
;Inicializa el USART para poder enviar datos

USART_Init:
	ldi 	Reg_Temporal, 				(1<<TXEN) 	;enable
	out 	_SFR_IO_ADDR(UCSRB),	Reg_Temporal

	ldi 	Reg_Temporal, 	(1<<URSEL)|(3<<UCSZ0)	;8bits, 1bit de stop, sin bit de paridad
	out 	_SFR_IO_ADDR(UCSRC),	Reg_Temporal

	ldi		Reg_Temporal,				0xC			;Baud 4800
	out 	_SFR_IO_ADDR(UBRRL),	Reg_Temporal

	ret

;-------------------------------------------------------------------------------------
;Read adc 
;Lee un dato del conversor adc y lo devuelve
;Reg_Temporal: canal del cual leer
;Reg_Temporal: valor leido devuelto

READ_ADC:

	out 	_SFR_IO_ADDR(ADMUX), 	Reg_Temporal 	; 
	ldi 	Reg_Temporal,				0b11001101	; 
	out 	_SFR_IO_ADDR(ADCSRA), 	Reg_Temporal 	;

WAIT_ADC:  
	
	in    	Reg_Temporal,		_SFR_IO_ADDR(ADCSRA)       ;READ THE STATUS
	;andi  	Reg_Temporal,				0b00010000  ;CHECK FLAG (1<<ADIF)
	;cpi		Reg_Temporal,		0b00010000
	;sbrs 	_SFR_IO_ADDR(ADCSRA), ADIF 	

	sbrs	Reg_Temporal,4

	rjmp	WAIT_ADC

;	ldi 	Reg_Temporal, 0b11101111
	sbi	_SFR_IO_ADDR(ADCSRA), 4

	in 		Reg_Temporal, 		_SFR_IO_ADDR(ADCL) 	;
	in 		Temp_Ambiente, 		_SFR_IO_ADDR(ADCH) 	;
	lsr 	Temp_Ambiente
	ror 	Reg_Temporal
	lsr 	Temp_Ambiente
	ror 	Reg_Temporal

	ret

;-------------------------------------------------------------------------------------
;Translate temp
;Convierte el valor recibido por parametro en su temperatura equivalente
;entrada: Reg_Temporal: valor leido por el ADC
;salida : Reg_Temporal: temperatura traducida

TRANSLATE_TEMP:
	;ldi 	Reg_Temporal,				35
	ret

;-------------------------------------------------------------------------------------
;Get mode
;Devuelve el valor del modo en el cual se ejecuta para la temperatura Reg_Temporal
;Reg_Temporal: temperatura leida
;Reg_Temporal: valor leido devuelto
GET_MODE:
	cpi 	Reg_Temporal,				24			;temperatura arbitraria para el modo calor
	brsh	COLD_MODE
HOT_MODE:
	ldi 	Reg_Temporal,				1 			;1 es modo calor
	ret
COLD_MODE:
	ldi 	Reg_Temporal,				0 			;0 es el modo frio
	ret

.end
