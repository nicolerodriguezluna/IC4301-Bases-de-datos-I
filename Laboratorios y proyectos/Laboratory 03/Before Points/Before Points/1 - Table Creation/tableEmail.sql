CREATE TABLE email(
    idemail NUMBER(15) CONSTRAINT email_idemail_nn NOT NULL,
    addressEmail VARCHAR2(25) CONSTRAINT email_address_nn NOT NULL,
    idPerson NUMBER(15) CONSTRAINT email_idperson_nn NOT NULL
)