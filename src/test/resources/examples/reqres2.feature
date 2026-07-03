@stage1
Feature: ReqRes API Demo

  Scenario: Get single user 2
    Given url 'https://reqres.in/api/users/2'
    And header x-api-key = 'free_user_3FxIp9oT3FOWIx8haPrurBmUccN'
    When method get
    Then status 200
    And print response

  Scenario: Get multiple users 2
    Given url 'https://reqres.in/api/users?page=2'
    And header x-api-key = 'free_user_3FxIp9oT3FOWIx8haPrurBmUccN'
    When method get
    Then status 200
    And print response

