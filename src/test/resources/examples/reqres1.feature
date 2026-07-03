@stage2
Feature: ReqRes API Demo

  Scenario: Get single user 1
    Given url 'https://reqres.in/api/users/2'
    And header x-api-key = 'free_user_3FxIp9oT3FOWIx8haPrurBmUccN'
    When method get
    Then status 200
    And print response

  Scenario: Get multiple users 1
    Given url 'https://reqres.in/api/users?page=2'
    And header x-api-key = 'free_user_3FxIp9oT3FOWIx8haPrurBmUccN'
    When method get
    Then status 200
    And print response

  Scenario: Create a new user 1
    Given url 'https://reqres.in/api/users'
    And request { name: 'John', job: 'Developer' }
    When method post
    Then status 201
    And match response.name == 'John'
    And match response.job == 'Developer'

  Scenario: Update a user 1
    Given url 'https://reqres.in/api/users/2'
    And request { name: 'Jane', job: 'Manager' }
    When method put
    Then status 200
    And match response.name == 'Jane'
    And match response.job == 'Manager'

  Scenario: Delete a user 1
    Given url 'https://reqres.in/api/users/2'
    When method delete
    Then status 204