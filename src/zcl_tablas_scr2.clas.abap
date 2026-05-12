CLASS zcl_tablas_scr2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tablas_scr2 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.


    TYPES: BEGIN OF ty_persona,
             nombre   TYPE string,
             edad     TYPE i,
             telefono TYPE string,
             email    TYPE string,
           END OF ty_persona.
    " Tabla interna - Solo existe en tiempo de ejecucion del sistema.
    DATA lt_persona TYPE TABLE OF ty_persona.
    DATA ls_cliente TYPE ty_persona.


    ls_cliente-nombre = 'Paco'.
    ls_cliente-edad = 28.
    ls_cliente-telefono = '679000989'.
    ls_cliente-email = 'paco@gmail.com'.

    INSERT ls_cliente INTO TABLE lt_persona.

    DATA ls_cliente2 TYPE ty_persona.


    ls_cliente2-nombre = 'Pedro'.
    ls_cliente2-edad = 22.
    ls_cliente2-telefono = '634000009'.
    ls_cliente2-email = 'pedro@gmail.com'.

    " Se inserta la línea en el índice indicado (empieza desde 1, no desde 0)
    " y hace mover las demas filas a n+1
    INSERT ls_cliente2 INTO lt_persona INDEX 1.


    ls_cliente2-nombre = 'Juana'.
    ls_cliente2-edad = 29.
    ls_cliente2-telefono = '663800789'.
    ls_cliente2-email = 'juana@gmail.com'.

    INSERT ls_cliente2 INTO lt_persona INDEX 1.

*    out->write( lt_persona ).

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    TYPES:BEGIN OF ty_animal,
            animal   TYPE string,
            edad     TYPE i,
            telefono TYPE STRing,
            email    TYPE string,
          END OF ty_animal.

    DATA lt_animal TYPE TABLE OF ty_animal.
    DATA ls_animal TYPE ty_animal.

    " De esta manera no es necesario declarar una estructura.
    INSERT VALUE #( animal = 'perro' edad = 5 telefono = '33132' email = 'perro@guau.com' ) INTO TABLE lt_animal.
    INSERT VALUE #( animal = 'gato' edad = 8 telefono = '4132' email = 'gato@miau.com' ) INTO TABLE lt_animal.
    INSERT VALUE #( animal = 'loro' edad = 9 telefono = '2432' email = 'loro@hola.com' ) INTO TABLE lt_animal.

*    out->write( lt_animal ).

    LOOP AT lt_animal INTO ls_animal.
      IF ls_animal-animal = 'loro'.
        out->write( | 'Este { ls_animal-animal } tiene { ls_animal-edad } años.'| ).
      ENDIF.

    ENDLOOP.

    TYPES: BEGIN OF ty_item,
             item_id TYPE i,
             name    TYPE string,
           END OF ty_item.
    DATA line TYPE ty_item.
    line-item_id = 10.
    line-name = `Teclado`.





  ENDMETHOD.

ENDCLASS.
