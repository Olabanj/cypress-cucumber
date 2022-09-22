Feature: Signup feature
 
 Scenario: User signUp to the acct
 
 Background: User launch the app

 Given User launch the app
 
 When  User enter the namefield "Test1"
 
 And  User enter the emailField "Test@gmail.com"
 
 And  User enter the passwordField "Test2"

 And User click on the checkbox
 
 And  User select male from the drop down
 
 And User check the employment radio button
 
 And User select the date field "2012-04-06"
 
 And user click on the submit button
 
 Then User should get a message form has been submitted 

 Scenario: emailfield empty

 When  User enter the namefield "Test1"
 
 And  User enter the emailField "Test@gmail.com"
 
 And  User enter the passwordField "Test2"
 
 And User click on the checkbox
 
 And  User select male from the drop down
 
 And User check the employment radio button
 
 And User select the date field "2012-04-06"
 
 And user click on the submit button
 
 Then User get an error message 

 
 Scenario: invalid date


 When  User enter the namefield "Test1"
 
 And  User enter the emailField "Test@gmail.com"
 
 And  User enter the passwordField "Test2"
 
 And User click on the checkbox
 
 And  User select male from the drop down
 
 And User check the employment radio button
 
 And User select the date field "3/4/2022"

 And user click on the submit button
 
 Then User get an error message 