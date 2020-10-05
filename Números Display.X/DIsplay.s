;Alan Yeray Cárdenas Galeana 7° ?B?
PROCESSOR 16F887
#include <xc.inc>
;Bits de Configuración
CONFIG FOSC=INTRC_NOCLKOUT
CONFIG WDTE=OFF
CONFIG PWRTE=ON
CONFIG MCLRE=OFF
CONFIG CP=OFF
CONFIG CPD=OFF
CONFIG BOREN=OFF
CONFIG IESO=OFF
CONFIG FCMEN=ON
CONFIG DEBUG=ON

CONFIG BOR4V=BOR40V
CONFIG WRT=OFF
;variables
PSECT udata
enero:
    DS 1
febrero:
    DS 1
marzo:
    DS 1
;inicio de programa
PSECT resetVec,class=CODE,delta=2
resetVec:
PAGESEL display
goto display
;subrutinas
    
PSECT code
delay:    
movlw    70     
movwf    enero          
alto:   
movlw     69       
movwf   febrero          
medio:    
movlw   68       
movwf    marzo          
bajo:    
decfsz   marzo,1       
goto    bajo      
decfsz   febrero,1       
goto        medio         
decfsz   enero,1       
goto       alto     
return                   
		
clean:
    BANKSEL ANSEL
    clrf ANSEL
    BANKSEL PORTA
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    return
num0:
    BANKSEL PORTA
    movlw 0b01111110
    movwf PORTA
   return
num1:
    BANKSEL PORTA
    movlw 0b00110000
    movwf PORTA
   return   
num2:
    BANKSEL PORTA
    movlw 0b01101101
    movwf PORTA
   return  
num3:
    BANKSEL PORTA
    movlw 0b01111001
    movwf PORTA
   return
num4:
    BANKSEL PORTA
    movlw 0b00110011
    movwf PORTA
   return
num5:
    BANKSEL PORTA
    movlw 0b01011011
    movwf PORTA
   return
num6:
    BANKSEL PORTA
    movlw 0b01011111
    movwf PORTA
   return
num7:
    BANKSEL PORTA
    movlw 0b01110000
    movwf PORTA
   return
num8:
    BANKSEL PORTA
    movlw 0b01111111
    movwf PORTA
   return
num9:
    BANKSEL PORTA
    movlw 0b01111011
    movwf PORTA
   return
display:
   call clean
   call num0
   call delay
   call clean
   call num1
   call delay
   call clean
   call num2
   call delay
   call clean
   call num3
   call delay
   call clean
   call num4
   call delay
   call clean
   call num5
   call delay
   call clean
   call num6
   call delay
   call clean
   call num7
   call delay
   call clean
   call num8
   call delay
   call clean
   call num9
   call delay
   call clean
    END