DROP SEQUENCE users_seq;
DROP TABLE USER_DETAILS;
DROP TABLE FRIEND_LIST;

CREATE SEQUENCE users_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
 
CREATE TABLE USER_DETAILS(	
	ID NUMBER(8,0),
	BIRTH_DATE DATE,
	GENDER CHAR(1) NOT NULL,
	E_MAIL VARCHAR2(255) NOT NULL, 
	ENABLED NUMBER(1,0), 
	IS_ONLINE NUMBER(1,0),
	STATUS VARCHAR(255),
	FAMILY_NAME VARCHAR2(255) NOT NULL, 
	FIRST_NAME VARCHAR2(255) NOT NULL,  
	USERNAME VARCHAR2(255) NOT NULL, 
	PASSWORD VARCHAR2(255) NOT NULL, 
  	ROLE VARCHAR2(20) NOT NULL,
	PHONE VARCHAR2(255) NOT NULL, 
	ID_PICTURE VARCHAR2(255), 
	CONSTRAINT pk_user_details_id PRIMARY KEY (ID)
);

CREATE TABLE FRIEND_LIST(	
	INITIATOR_ID NUMBER(8,0),
	FRIEND_ID NUMBER(8,0),
 	STATUS VARCHAR2(10),
	CONSTRAINT pk_friend_list_id PRIMARY KEY (INITIATOR_ID, FRIEND_ID)
);

