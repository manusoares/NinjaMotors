

Feature: User Registration
    As a system visitor
    I can do my registration with name, email and password
    So that I can advertise my used vehicle

@sprint1 @smoke
Scenario: Simple Registration

    Given that I am on registration page
    When I do my register with
    | nome    | Emanuella     | 
    | email   | esmfreitas@gmail.com |
    | senha   | 123456       |
    Then I am successfully authenticated

@temp
Scenario Outline: Try to Register
 
    Given that I am on registration page
    When I do my register with
    | nome    | <nome>     | 
    | email   | <email> |
    | senha   | <senha>      |
    Then I should see the message "<alerta>"

    Examples:
      | nome      | email                | senha  | alerta                                  |
      | Emanuella | esmfreitas#gmail.com | 123456 | Email inválido.                         |
      | Emanuella | esmfreitas@gmail.com |        | Senha não informada.                    |
      |           | esmfreitas@gmail.com | 123456 | Nome não informado.                     |
      | Emanuella | esmfreitas@gmail.com | 12345  | Senha deve ter pelo menos 6 caracteres. |




