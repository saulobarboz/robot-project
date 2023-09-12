*** Settings ***
Library           FakerLibrary      locale=pt_BR
Library           DateTime
Library           String


*** Keywords ***

Dados para CheckOut

    ${Faker_FirstName}             FakerLibrary.First Name      
    Set Suite Variable    ${Faker_FirstName}

    ${Faker_LastName}              FakerLibrary.Last Name     
    Set Suite Variable    ${Faker_LastName}

    ${Faker_PostalCode}            FakerLibrary.postcode
    Set Suite Variable    ${Faker_PostalCode}