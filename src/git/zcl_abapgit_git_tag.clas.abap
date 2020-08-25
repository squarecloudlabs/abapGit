CLASS zcl_abapgit_git_tag DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS add_tag_prefix
      IMPORTING
        !iv_text       TYPE csequence
      RETURNING
        VALUE(rv_text) TYPE string .
    CLASS-METHODS remove_tag_prefix
      IMPORTING
        !iv_text       TYPE string
      RETURNING
        VALUE(rv_text) TYPE string .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABAPGIT_GIT_TAG IMPLEMENTATION.


  METHOD add_tag_prefix.

    rv_text = zif_abapgit_definitions=>c_git_branch-tags_prefix && iv_text.

  ENDMETHOD.


  METHOD remove_tag_prefix.

    rv_text = iv_text.

    REPLACE FIRST OCCURRENCE OF zif_abapgit_definitions=>c_git_branch-tags_prefix
            IN rv_text
            WITH ''.

  ENDMETHOD.
ENDCLASS.
