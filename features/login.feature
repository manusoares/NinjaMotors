
Feature: Login
     As a registered user
     I can access the system with my email and password
     So that I can advertise my vehicles


Background: Login Form
    Given that I accessed the login page


@login
Scenario: Users Login

    
    When I do login with:
    | nome    | Emanuella            | 
    | email   | esmfreitas@gmail.com |
    | senha   | 123456               |
    Then I am successfully authenticated
    

@attempt_login
Scenario Outline: Try to Sign in
    
    When I do login with:
    | email   | <email> |
    | senha   | <senha> |
    Then I should see the following message of "<alerta>"

   Examples:
      | email                | senha  | alerta                        |
      | naoexiste@gmail.com  | 123456 | Usuário e/ou senha inválidos. |
      | esmfreitas@gmail.com | 123abc | Usuário e/ou senha inválidos. |
      | naoexiste@gmail.com  |        | Senha não informada.          |
      |                      | 123456 | Email não informado.          |
      | esmfreitas#gmail.com | 123456 | Email inválido.               |

