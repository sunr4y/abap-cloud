CLASS zcl_random DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_random IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " Ejemplo sin seed fijo
    DATA(lv_random) = cl_abap_random_int=>create(
        seed = cl_abap_random=>seed( )
        min = 1
        max = 99 )->get_next( ).
    out->write( | Número aleatorio { lv_random } | ).
    out->write( '==================================' ).

    " Ejemplo con seed fijo

    DATA seed TYPE i VALUE 12345.
    DATA rng TYPE REF TO cl_abap_random_int.
    DATA samples TYPE STANDARD TABLE OF i WITH EMPTY KEY.


    rng = cl_abap_random_int=>create(
        seed = seed
        min = 1
        max = 100 ).

    DO 10 TIMES.
      APPEND rng->get_next(  ) TO samples.
    ENDDO.

    out->write( 'Muestras aleatorias: ' ).
    out->write( samples ).

  ENDMETHOD.

ENDCLASS.
