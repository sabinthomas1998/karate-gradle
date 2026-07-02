Feature: ReqRes API Demo

  Scenario: Get single user
    Given url baseUrl + '/users/2'
    When method get
    Then status 200
    And match response.data.id == 2

  Scenario: Create a user
    Given url baseUrl + '/users'
    And request { "name": "Sabin", "job": "Leader" }
    When method post
    Then status 201
    And match response.name == 'Sabin'
