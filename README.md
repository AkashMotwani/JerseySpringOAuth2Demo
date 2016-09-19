JerseySpringOAuth2Demo
==================

Demo Application to secure Jersey REST Services using Spring Security OAuth 2 API

Steps to run project 

1) Install MySQL if you don't already installed (or use online cloud based MySQL database for running application) 
2) Create database and load schema refer Schema.sql (This is needed to manage token store , clients , users and roles 
3) Modify dataSource configuration spring-security.xml as per your MySQL connectivity 
4) To build and run project mvn jetty:run 

Spring OAuth 2.0 Demo With Password Grant Type to Get Access Token 
----------------------------------------------
POST /oauth2/oauth/token HTTP/1.1
Host: localhost:8080
Cache-Control: no-cache
Content-Type: application/x-www-form-urlencoded

grant_type=password&username=user1&password=1234567&scope=read&client_id=test&client_secret=%242a%2411%24diFS9cU4kYWfu7luoocRHOGrCMLGx1j5ZZEnJC1zd5zIM1xfeuk8y

Access Protected Resource using Access Token received from earlier call 
------------------
#### URI

GET /oauth2/rest/userMessage HTTP/1.1
Host: localhost:8080
Authorization: Bearer 892fc2a3-0f9f-40d2-9540-8482f5cff337
Cache-Control: no-cache

#### URI
GET /oauth2/rest/adminMessage HTTP/1.1
Host: localhost:8080
Authorization: Bearer 892fc2a3-0f9f-40d2-9540-8482f5cff337
Cache-Control: no-cache



