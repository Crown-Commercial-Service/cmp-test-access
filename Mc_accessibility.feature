Feature:  MC - Accessibility


  Scenario:  MC - Home page
    Given the user is on the "MC Home" page

  Scenario:  MC - Cognito page
    Given the user is on the "MC Home" page
    When user clicks "Start now"

  Scenario:  MC - Login page
    Given the user is on the "MC Home" page
    When user clicks "Start now"
    Then user clicks "Sign in with Cognito"

  Scenario:  MC - Confirm you need management consultancy page
    Given the user is on the "MC Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    Then user is on "Confirm you need management consultancy" page


  Scenario:  MC - Select the lot you need page
    Given the user is on the "MC Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Confirm you need management consultancy" page
    Then user clicks "Confirm and continue"
  ####Then user is on "Select the services you need" page
  #Then sleep "3000"


  Scenario:  MC - Select the services you need page
    Given the user is on the "MC Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Confirm you need management consultancy" page
    When user clicks "Confirm and continue"
    Then user is on "Select the services you need" page

  Scenario:  MC - Select the regions you want the consultants to work page
    Given the user is on the "MC Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Confirm you need management consultancy" page
    When user clicks "Confirm and continue"
    When user is on "Select the services you need" page
    Then user is on "Select the regions you want the consultants to work" page

  Scenario:  MC - Supplier results page
    Given the user is on the "MC Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Confirm you need management consultancy" page
    When user clicks "Confirm and continue"
    When user is on "Select the services you need" page
    When user is on "Select the regions you want the consultants to work" page
    Then user is on "Supplier results" page

  Scenario:  MC - Download the supplier list page
    Given the user is on the "MC Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Confirm you need management consultancy" page
    When user clicks "Confirm and continue"
    When user is on "Select the services you need" page
    When user is on "Select the regions you want the consultants to work" page
    When user is on "Supplier results" page
    Then user is on "Download the supplier list" page

  Scenario:  MC - Supplier page
    Given the user is on the "MC Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Confirm you need management consultancy" page
    When user clicks "Confirm and continue"
    When user is on "Select the services you need" page
    When user is on "Select the regions you want the consultants to work" page
    When user is on "Supplier results" page
    Then user is on "Supplier" page
