**********************************************************************
****EJERCICIO 1*******************************************************
**********************************************************************
*Dado un valor numérico que representa una nota (0–10),
*muestra por consola si el estudiante ha obtenido Suspenso (0–4),
*Aprobado (5–6), Notable (7–8) o Sobresaliente (9–10).
*Si el valor es negativo o mayor que 10, muestra un mensaje de error.
**********************************************************************

**********************************************************************
****EJERCICIO 2*******************************************************
**********************************************************************
*Pide un número del 1 al 10 como parámetro de selección
*y muestra su tabla de multiplicar completa (del 1 al 10)
*usando un bucle DO. Cada línea debe tener el formato: 7 x 3 = 21
**********************************************************************

**********************************************************************
****EJERCICIO 3*******************************************************
**********************************************************************
*Dado un número del 1 al 7, usa CASE para devolver el nombre
*del día correspondiente (1 = Lunes … 7 = Domingo).
*Para cualquier otro valor, devuelve 'Día inválido'.
**********************************************************************

CLASS zcl_ejrepaso1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ejrepaso1 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    ""  EJERCICIO 1
    DATA(lv_nota) = 7.

    out->write( 'Ejercicio 1' ).

    IF lv_nota < 0 OR lv_nota > 10.
      out->write( 'La nota no es válida' ).
    ELSEIF lv_nota <= 4.
      out->write( 'Suspenso' ).
    ELSEIF lv_nota <= 6.
      out->write( 'Aprobado' ).
    ELSEIF lv_nota <= 8.
      out->write( 'Notable' ).
    ELSE.
      out->write( 'Sobresaliente' ).

    ENDIF.

    out->write( '===================================' ).



    "" EJERCICIO 1 BIS: Rehacer el ejercicio contemplando notas con 2 decimales.
    out->write( 'Ejercicio 1 BIS' ).

    DATA lv_notadecimal TYPE p LENGTH 3 DECIMALS 2.

    lv_notadecimal = '4.99'.
    IF lv_notadecimal < 0 OR lv_notadecimal > 10.
      out->write( 'La nota no es válida' ).
    ELSEIF lv_notadecimal < 5.
      out->write( 'Suspenso' ).
    ELSEIF lv_notadecimal < 7.
      out->write( 'Aprobado' ).
    ELSEIF lv_notadecimal < 9.
      out->write( 'Notable' ).
    ELSE.
      out->write( 'Sobresaliente' ).
    ENDIF.

    out->write( '===================================' ).



    ""  EJERCICIO 2
    out->write( 'Ejercicio 2' ).
    DATA lv_resultado TYPE i.

    lv_resultado = 7.

    DO 10 TIMES.

      out->write( |{ lv_resultado } * { sy-index } = { lv_resultado * sy-index }| ).

    ENDDO.
    out->write( '===================================' ).

    "" EJERCICIO 3

    out->write( 'Ejercicio 3' ).

    DATA(iv_num) = 7.
    DATA rv_dia TYPE string.

    CASE iv_num.
      WHEN 1.
        rv_dia = 'Lunes'.
      WHEN 2.
        rv_dia = 'Martes'.
      WHEN 3.
        rv_dia = 'Miércoles'.
      WHEN 4.
        rv_dia = 'Jueves'.
      WHEN 5.
        rv_dia = 'Viernes'.
      WHEN 6.
        rv_dia = 'Sábado'.
      WHEN 7.
        rv_dia = 'Domingo'.


      WHEN OTHERS.
        rv_dia = 'Día inválido'.
    ENDCASE.

    out->write( rv_dia ).




  ENDMETHOD.

ENDCLASS.
