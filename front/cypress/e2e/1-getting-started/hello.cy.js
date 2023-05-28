/// <reference types="cypress" />

describe('example hello', () => {
  beforeEach(() => {
    cy.visit('/')
  })

  it('hello button', () => {
    cy.get('#hello').should('have.text', 'RailsからAPIを取得する')
  })
})
