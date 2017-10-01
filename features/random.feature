Feature: Random account

  Scenario: Verify sign in with pre registered valid user email and password
    Then Open Amazon
    Then Click button sign in
    Then Click create new account
    Then Type random name
    Then Type email random email
    Then Type random password
    Then Create amazon account
    Then Verify new created account