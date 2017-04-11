Feature: Twitter Demo

  As a Twitter user
  I want to type my username and password
  So that I login to system

  Scenario: Login to Twitter
    Given I am at Twitter loginpage
    When I type username: "<username>" and password: "<password>"
    Then I can see my account with "<username>" 

  Examples:
  | username   | password | error                       |
  |            | random   | Bu alan zorunludur          |
  | WrongEmail | random   | Geçerli bir e-posta giriniz |
