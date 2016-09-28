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

curl -X POST -H "Cache-Control: no-cache" -H "Content-Type: application/x-www-form-urlencoded" -d 'grant_type=password&username=user1&password=user1&scope=read&client_id=test&client_secret=$2a$11$diFS9cU4kYWfu7luoocRHOGrCMLGx1j5ZZEnJC1zd5zIM1xfeuk8y' "http://localhost:8080/oauth2/oauth/token"

Access Protected Resource using Access Token received from earlier call 
------------------
#### URL

curl -X GET -H "Authorization: Bearer 1b34181e-bd8a-41d7-893c-3825ef62899e" -H "Cache-Control: no-cache" "http://localhost:8080/oauth2/rest/userMessage"

#### URL

curl -X GET -H "Authorization: Bearer 1b34181e-bd8a-41d7-893c-3825ef62899e" -H "Cache-Control: no-cache" "http://localhost:8080/oauth2/rest/adminMessage"
