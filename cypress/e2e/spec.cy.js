const { method } = require("bluebird")

describe('Cloud Resume Site Test', () => {
  it('Tests API Response', () => {
    cy.request({
          method :'POST',
          url :'https://ayu3ot44vf.execute-api.us-east-2.amazonaws.com/Prod//dynamodbmanager',
      }).as('details')
    cy.get('@details').its('status').should('eq', 200)
    cy.get('@details').then((response) => {
        // response.body is automatically serialized into JSON
        cy.log(response.body)})
    cy.get('@details').its('body').its('body-json').its("body").should('include', '"count"')
  })
  it('Tests Page Load', () => {
    cy.visit('https://www.eric-j-anderson.com/')
      })


})
