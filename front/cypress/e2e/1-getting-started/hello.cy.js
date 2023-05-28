/// <reference types="cypress" />

describe('example hello', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000/')
  })

  it('hello button', () => {
    cy.get('#hello').should('have.text', 'RailsからAPIを取得する')
  })
})
