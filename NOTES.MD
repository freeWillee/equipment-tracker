DEFINE RELATIONSHIPS:

USER (player) has many goals
USER has many assists
Goals belongs to User
Assists belongs to User
GoalsTarget belongs to User
AssistsTarget belongs to User
LOGIN as a User
Only User has access to his/her own statistics
Validate User
Display validation error messages


AUTHENTICATION: 
1) Routes:
    GET /signup => form
    POST /users => create user
2) Database
    Users table
3) Login system must have:
    username
    password
4) Be able to find unique user with username and password