import{Given,When,And,Then} from "cypress-cucumber-preprocessor/steps";
Given ("A user open the login page",function(){
    cy.visit("https://www.saucedemo.com/")
})
When("A user enter the username {string}",function(username){

    cy.get("#user-name").type("standard_user")
})
And("A User enter the password {string}",function(password){

    cy.get("#password").type("secret_sauce")
})
And("A user click on the login button",function(){
    
    cy.get("#login-button").click()

})

Then ("A user login successfully",function(){
    cy.get(".title").should("have.text","Products")
})

Then ("A user should get an error message",function(){
    cy.get("h3[data-test='error']").should("have.text","Epic sadface: Sorry, this user has been locked out.")
})