CLASS zcl_func_proces_scr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_func_proces_scr IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lv_var TYPE string VALUE 'Hola este es el curso de ABAP'.

    " to_upper: la cadena es devuelta en mayúsculas
    out->write( | to_upper        = { to_upper( lv_var ) } | ).

    " to_lower: la cadena es devuelta en minúsculas
    out->write( | to_lower        = { to_lower( lv_var ) } | ).

    " reverse: el orden de los caracteres es invertido
    out->write( | reverse         = { reverse( lv_var ) } | ).

    " shift_left: los primeros 'places' caracteres son eliminados por la izquierda
    out->write( | shift_left      = { shift_left( val = lv_var places = 5 ) } | ).

    " shift_right: 'places' caracteres son eliminados por la derecha
    "   (el resultado conserva la longitud original rellenando con espacios a la izquierda)
    out->write( | shift_right     = { shift_right( val = lv_var places = 5 ) } | ).

    " substring: porción de longitud 'len' es extraída a partir del desplazamiento 'off' (base 0)
    out->write( | substring       = { substring( val = lv_var off = 9 len = 6 ) } | ).

    " substring_from: subcadena desde la primera coincidencia de 'sub', incluyendo 'sub'
    out->write( | substring_from  = { substring_from( val = lv_var sub = 'el' ) } | ).

    " substring_to: subcadena desde el inicio hasta la primera coincidencia de 'sub', incluyendo 'sub'
    out->write( | substring_to    = { substring_to( val = lv_var sub = 'el' ) } | ).

    " substring_after: subcadena posterior a la primera coincidencia de 'sub' (sin incluir 'sub')
    out->write( | substring_after = { substring_after( val = lv_var sub = 'el' ) } | ).

    " substring_before: subcadena anterior a la primera coincidencia de 'sub' (sin incluir 'sub')
    out->write( | substring_before= { substring_before( val = lv_var sub = 'el' ) } | ).

    " condense: los espacios iniciales son eliminados y las secuencias internas/finales
    "   de espacios son reducidas a un único espacio
    out->write( | condense        = { condense( lv_var ) } | ).

  ENDMETHOD.
ENDCLASS.
