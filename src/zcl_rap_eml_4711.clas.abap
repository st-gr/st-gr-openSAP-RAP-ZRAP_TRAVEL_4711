CLASS zcl_rap_eml_4711 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_eml_4711 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*    " step 1 - READ
*    READ ENTITIES OF zi_rap_travel_4711
*        ENTITY Travel
*            FROM VALUE #( ( TravelUUID = 'AF3A08E016AD115A17000302FC2A502D' ) )
*        RESULT DATA(travels).
*
*    out->write( travels ).

*    " step 2 - READ with fields
*    READ ENTITIES OF zi_rap_travel_4711
*      ENTITY Travel
*        FIELDS ( AgencyID CustomerID )
*      WITH VALUE #( ( TravelUUID = 'AF3A08E016AD115A17000302FC2A502D' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).

*    " step 3 - READ with all fields
*    READ ENTITIES OF zi_rap_travel_4711
*      ENTITY Travel
*        ALL FIELDS WITH VALUE #( ( TravelUUID = 'AF3A08E016AD115A17000302FC2A502D' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).

*    " step 4 - READ by association
*    READ ENTITIES OF zi_rap_travel_4711
*      ENTITY travel BY \_Booking
*        ALL FIELDS WITH VALUE #( ( TravelUUID = 'AF3A08E016AD115A17000302FC2A502D' ) )
*      RESULT DATA(bookings).
*
*    out->write( bookings ).

*    " step 4 - READ by association
*    READ ENTITIES OF zi_rap_travel_4711
*      ENTITY travel BY \_Booking
*        ALL FIELDS WITH VALUE #( ( TravelUUID = 'AF3A08E016AD115A17000302FC2A502D' ) )
*      RESULT DATA(bookings).
*
*    out->write( bookings ).

*    " step 5 - Unsuccessful READ
*    READ ENTITIES OF zi_rap_travel_4711
*      ENTITY travel BY \_Booking
*        ALL FIELDS WITH VALUE #( ( TravelUUID = '11111111111111111111111111111111' ) )
*      RESULT DATA(travels)
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*    out->write( travels ).
*    out->write( failed ).   " complex structures not supported by the console output
*    out->write( reported ). " complex structures not supported by the console output

*    " step 6 - MODIFY Update
*    MODIFY ENTITIES OF ZI_RAP_Travel_4711
*      ENTITY Travel
*        UPDATE
*          SET FIELDS WITH VALUE
*            #( ( TravelUUID  = 'AF3A08E016AD115A17000302FC2A502D'
*                 Description = 'I like RAP@openSAP' ) )
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*    out->write( 'update done' ).
*
*    " step 6b - Commit Entities
*    COMMIT ENTITIES
*      RESPONSE OF ZI_RAP_Travel_4711
*      FAILED      DATA(failed_commit)
*      REPORTED    DATA(reported_commit).

*    " step 7 - MODIFY Create
*    MODIFY ENTITIES OF ZI_RAP_Travel_4711
*      ENTITY Travel
*        CREATE
*          SET FIELDS WITH VALUE
*            #( ( %cid        = 'MyContextID_1'
*                 AgencyID    = '70012'
*                 CustomerID  = '14'
*                 BeginDate   = cl_abap_context_info=>get_system_date( )
*                 EndDate     = cl_abap_context_info=>get_system_date( ) + 10
*                 Description = 'I like RAP@openSAP' ) )
*      MAPPED DATA(mapped)
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*    out->write( mapped-travel ).
*
*    COMMIT ENTITIES
*      RESPONSE OF ZI_RAP_Travel_4711
*      FAILED      DATA(failed_commit)
*      REPORTED    DATA(reported_commit).
*
*    out->write( 'Create done' ).

    " step 8 - MODIFY Delete
    MODIFY ENTITIES OF ZI_RAP_Travel_4711
      ENTITY Travel
        DELETE FROM
          VALUE
            #( ( TravelUUID  = '12F9268AEA131EDB8CBC7F6196A888F8' ) )
      FAILED DATA(failed)
      REPORTED DATA(reported).

    COMMIT ENTITIES
      RESPONSE OF ZI_RAP_Travel_4711
      FAILED      DATA(failed_commit)
      REPORTED    DATA(reported_commit).

    out->write( 'Delete done' ).

  ENDMETHOD.

ENDCLASS.
