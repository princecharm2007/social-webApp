BEGIN;
create database SocialApp;
use SocialApp;

create table USER_CONNECTION (USER_ID varchar(255) not null,
    PROVIDER_ID varchar(255) not null,
    PROVIDERUSER_ID varchar(255),
    RANK int not null,
    DISPLAY_NAME varchar(255),
    PROFILE_URL varchar(512),
    IMAGE_URL varchar(512),
    ACCESS_TOKEN varchar(255) not null,
    SECRET varchar(255),
    REFRESH_TOKEN varchar(255),
    EXPIRE_TIME bigint,
    primary key (USER_ID, PROVIDER_ID, PROVIDERUSER_ID));
create unique index USER_CONNECTION_RANK on USER_CONNECTION(USER_ID, PROVIDER_ID, RANK);

CREATE TABLE USER_ACCOUNTS (
  ID bigint(30) NOT NULL AUTO_INCREMENT,
  CREATION_TIME datetime NOT NULL,
  EMAIL varchar(150) NOT NULL,
  FIRST_NAME varchar(100) NOT NULL,
  LAST_NAME varchar(100) NOT NULL,
  MODIFICATION_TIME datetime NOT NULL,
  PASSWORD varchar(255),
  ROLE varchar(20) NOT NULL,
  SIGN_IN_PROVIDER varchar(20),
  VERSION bigint(20) NOT NULL,
  PRIMARY KEY (ID),
  UNIQUE KEY (EMAIL)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

COMMIT;