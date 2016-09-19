CREATE  TABLE users (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username));


CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));

INSERT INTO users(username,password,enabled)
VALUES ('user1','1234567', true);
INSERT INTO users(username,password,enabled)
VALUES ('user2','123456', true);

INSERT INTO user_roles (username, role)
VALUES ('user1', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('user1', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('user2', 'ROLE_USER');



CREATE TABLE oauth_client_details (
  client_id varchar(256) NOT NULL,
  resource_ids varchar(256) DEFAULT NULL,
  client_secret varchar(256) DEFAULT NULL,
  scope varchar(256) DEFAULT NULL,
  authorized_grant_types varchar(256) DEFAULT NULL,
  web_server_redirect_uri varchar(256) DEFAULT NULL,
  authorities varchar(256) DEFAULT NULL,
  access_token_validity int(11) DEFAULT NULL,
  refresh_token_validity int(11) DEFAULT NULL,
  additional_information varchar(4096) DEFAULT NULL,
  autoapprove varchar(4096) DEFAULT NULL,
  PRIMARY KEY (client_id)
);


INSERT INTO oauth_client_details(client_id, resource_ids, client_secret, scope, authorized_grant_types, authorities, access_token_validity, refresh_token_validity)
VALUES ('test', 'rest_api', '$2a$11$diFS9cU4kYWfu7luoocRHOGrCMLGx1j5ZZEnJC1zd5zIM1xfeuk8y', 'trust,read,write', 'client_credentials,authorization_code,implicit,password,refresh_token', 'ROLE_USER', '4500', '45000');


  CREATE TABLE oauth_access_token (
  token_id varchar(256) DEFAULT NULL,
  token blob,
  authentication_id varchar(256) DEFAULT NULL,
  user_name varchar(256) DEFAULT NULL,
  client_id varchar(256) DEFAULT NULL,
  authentication blob,
  refresh_token varchar(256) DEFAULT NULL
);



CREATE TABLE oauth_refresh_token (
  token_id varchar(256) DEFAULT NULL,
  token blob,
  authentication blob
);