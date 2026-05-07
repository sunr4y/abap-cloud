CLASS zcl_estructura_scr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_estructura_scr IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    TYPES: BEGIN OF ty_persona,
             nombre   TYPE string,
             edad     TYPE i,
             telefono TYPE string,
             email    TYPE string,
           END OF ty_persona.

    DATA ls_persona TYPE ty_persona.
    DATA ls_cliente TYPE ty_persona.
    DATA ls_empleado TYPE ty_persona.


    ls_cliente-nombre = 'Daniel'.
    ls_cliente-edad = 33.
    ls_cliente-telefono = '676124930'.
    ls_cliente-email = 'daniel@mail.com'.


    " Creamos, asignamos tipo y valores.
    DATA(ls_humano) = VALUE ty_persona( nombre = 'Juanma' edad = 32 email = 'daniel@gmail.com' ).

    " Ya estaba creada y con tipo asignado, solo definimos valores
    ls_persona = VALUE #(
    nombre = 'Manolo'
    edad = 18
    email = 'manolo@gmail.com' ).


    out->write( ls_cliente ).
    out->write( ls_humano ).
    out->write( ls_persona ).

  ENDMETHOD.
ENDCLASS.
