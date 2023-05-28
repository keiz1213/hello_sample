/// <reference types="cypress" />

describe('example hello', () => {
  beforeEach(() => {
    cy.visit('http://localhost:8080/')
  })

  it('hello button', () => {
    cy.get('#hello').should('have.text', 'RailsからAPIを取得する')
  })
})
