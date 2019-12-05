Feature:  FM - Accessibility

  #Background:

    #Given the user is on the "FM Home" page

  Scenario:  FM - Home page
    Given the user is on the "FM Home" page

  Scenario:  FM - Cognito page
    Given the user is on the "FM Home" page
    When user clicks "Start now"

  Scenario:  FM - Login page
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    Then user clicks "Sign in with Cognito"

  Scenario: FM - Procurement page
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    Then user is on "Procurements" page

  Scenario: FM - Start a new procurement page
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Start a new procurement" page

  Scenario: FM - Manage procurements page
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Manage procurements" page

  Scenario: FM - Manage buildings page
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Manage buildings" page