CLASS zcl_string_methods_scr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_string_methods_scr IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(lv_num) = strlen( 'daniel' ).

    out->write( lv_num ).

    DATA lv_var TYPE string VALUE 'experis experis'.

    " Cuenta el numero de ocurrencias del del sub en la variable
    " val -> variable donde buscar
    " sub -> substring la cual buscar
    DATA(lv_num_oc) = count( val = lv_var sub = 'ex' ).

    out->write( lv_num_oc ).
    " Igual que la anterior pero case insensitive

    lv_var = 'Experis experis'.

    lv_num_oc = count_any_of( val = lv_var sub = 'ex' ).
    out->write( lv_num_oc ).

    "Devuelve todo o que no coincida. Case sensitive

    lv_num_oc = count_any_not_of( val = lv_var sub = 'ex' ).
    out->write( lv_num_oc ).

    "Devueve la primera posicion de la string que se esta buscando

    DATA(lv_position) = find( val = lv_var sub = 'is' ).
    out->write( lv_position ).

    "Lo mismo que el anterior pero no busca la cadena completa sino cada caracter por separado.
    DATA(lv_any_position) = find_any_of( val = lv_var sub = 'is' ).
    out->write( lv_any_position ).

    "Devuelve la primera posicion no coincidente con los subcaracteres del string dado.
    DATA(lv_any_not_position) = find_any_not_of( val = lv_var sub = 'ex' ).
    out->write( lv_any_not_position ).


  ENDMETHOD.
ENDCLASS.
