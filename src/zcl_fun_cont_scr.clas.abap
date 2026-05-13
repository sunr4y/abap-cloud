CLASS zcl_fun_cont_scr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fun_cont_scr IMPLEMENTATION.



  METHOD if_oo_adt_classrun~main.

    DATA: lv_text     TYPE string,
          lv_pattern  TYPE string,
          lv_pattern2 TYPE string.
    lv_text     = ' the employees number is 123-456-7890'.
    lv_pattern  = `\d{3}-\d{3}-\d{4}`.                          " teléfono: 3-3-4 dígitos
    lv_pattern2 = `\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b`. " email genérico
    " match( ): la coincidencia del patrón es devuelta como string.
    "   val  = cadena de entrada
    "   pcre = expresión regular en sintaxis PCRE
    "   occ  = qué aparición del patrón será devuelta:
    "            1  -> la primera aparición
    "            2  -> la segunda aparición
    "            n  -> la aparición número n
    "           -1  -> la última aparición (se cuenta desde el final)
    DATA(lv_number) = match( val = lv_text pcre = lv_pattern occ = 1 ).
    out->write( lv_number ).
    " Ejemplo aplicado a la detección de un correo electrónico
    DATA(lv_email) = 'Hola mi email es test@test.com , buenas tardes.'.
    out->write( match( val = lv_email pcre = lv_pattern2 occ = 1 ) ).
    " contains( ): valor booleano (abap_true / abap_false) que indica si el patrón aparece en la cadena.
    " find( ):     desplazamiento (0-based) de la primera coincidencia; -1 cuando no existe coincidencia.
    IF contains( val = lv_email pcre = lv_pattern2 ).
      out->write( 'Hay un email en la cadena de texto.' ).
      out->write( |El correo se encuentra en la posición { find( val = lv_email pcre = lv_pattern2 ) }.| ).
      out->write( |El correo encontrado es { match( val = lv_email pcre = lv_pattern2 ) }| ).
    ELSE.
      out->write( 'No hay un email en la cadena de texto.' ).
    ENDIF.


  ENDMETHOD.
ENDCLASS.
