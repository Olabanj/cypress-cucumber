Feature: login Feature

Feature This require user to login.

Scenario: Login succesfully
Given A user open the login page
When A user enter the username "standard_user"
And A User enter the password "secret_sauce"
And A user click on the login button
Then A user login successfully

Scenario: Failed login
Given A user open the login page
When A user enter the username "locked_out_user"
And A User enter the password "secret_sauce"
And A user click on the login button
Then A user should get an error message