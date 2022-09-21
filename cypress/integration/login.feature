Feature: login Feature

Feature This require user to login.
Background:  
Given A user open the login page

Scenario: Login succesfully

When A user enter the username "standard_user"
And A User enter the password "secret_sauce"
And A user click on the login button
Then A user login successfully

Scenario: Failed login

When A user enter the username "locked_out_user"
And A User enter the password "secret_sauce"
And A user click on the login button
Then A user should get an error message

Scenario: invalid password
When A user enter the username "locked_out_user"
And A User enter the password "secret1234"
And A user click on the login button
Then A user should error message for invalid user


Scenario: invalid username
When A user enter the username "agssghsghs"
And A User enter the password "secret_sauce"
And A user click on the login button
Then A user should error message for invalid username