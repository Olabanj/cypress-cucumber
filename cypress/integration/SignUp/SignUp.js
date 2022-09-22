///<reference types = "Cypress"/>
import{Given,When,Then,And} from "cypress-cucumber-preprocessor/steps"

Given("User launch the app",function(){
    cy.visit("https://rahulshettyacademy.com/angularpractice/")

})
When("User enter the namefield {string}",function(namefield){
    cy.get(':nth-child(1) > .form-control').type("Test1")

})
And("User enter the emailField {string}",function(email){
    cy.get("input[name='email']").type("Test@gmail.com")

})

And("User enter the passwordField {string}",function(password){
    cy.get("#exampleInputPassword1").type("Test2")

})

And("User click on the checkbox",function(){
    cy.get("#exampleCheck1").check()

})

And("User select male from the drop down",function(){
    cy.get("#exampleFormControlSelect1").select("Female")

})

And("User check the employment radio button",function(){
    cy.get("#inlineRadio1").check()

})

And("User select the date field {string}",function(date){
    cy.get("input[name='bday']").type("2012-04-06")

})

And("user click on the submit button",function(){
    cy.get("input[value='Submit']").click()

})

Then("User should get a message form has been submitted",function(){

    cy.get(".alert.alert-success.alert-dismissible").should("be.visible")
    
})

Then("User get an error message",function(){

    
    
})

Then("User get an error message for invalid date",function(){

    
    
})