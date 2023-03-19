import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

const url = "https://example-pagbrasil.com";
Given("we are in on  form page", () => {
  cy.visit(url);
});

When(`we go fills all fields correctly and submits the form`, () => {
  cy.get("#Name").type("Thalis Antunes");
  cy.get("#Email").type("thalisantunes@hotmail.com");
  cy.get("#Company").type("PagBrasil");
  cy.get("#Website").type("https://www.pagbrasil.com/pt-br/");
  cy.get("#Phone").type("55999293516");
  cy.get("# Inquiry").type(
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quis ante vel turpis tincidunt rhoncus. Vivamus eget leo euismod, lacinia nunc non, bibendum orci. In euismod, ex sed consequat lacinia, lectus ex rutrum magna, eget ultrices sapien nisl non augue. Sed viverra nibh ac lectus iaculis, sit amet bibendum mauris maximus. Sed vitae nunc nec mauris fringilla fringilla. Vestibulum in sagittis arcu. Quisque euismod orci augue, at malesuada leo rhoncus a. Aliquam consectetur, augue id sollicitudin aliquet, arcu lacus aliquam orci, at fermentum purus neque sit amet nisl. Donec sagittis magna ut tincidunt facilisis."
  );
});

Then(`the form data is sent to the backend`, () => {
  cy.contains("Submit").click();
});

And(`the email is successfully sent to the receiver`, () => {
  cy.get("response").should("“Formulário enviado com sucesso” ");
});
