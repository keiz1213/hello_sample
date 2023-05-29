/// <reference types="cypress" />

describe('top page', () => {
  beforeEach(() => {
    cy.visit('/')
  })

  it('hello button', () => {
    cy.get('#hello').should('have.text', 'HelloAPIを叩く')
  })

  it('link to home', () => {
    cy.get('a').click()
    cy.get('h1').should('contain', 'Home')
  })
})
