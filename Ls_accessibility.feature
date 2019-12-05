Feature:  LS - Accessibility


  Scenario:  LS - Home page
    Given the user is on the "LS Home" page

  Scenario:  LS - Cognito page
    Given the user is on the "LS Home" page
    When user clicks "Start now"

  Scenario:  LS - Login page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    Then user clicks "Sign in with Cognito"

  Scenario: LS - Do you work for central government page
    Given the user is on the "LS Home" page
    When user clicks "Start now"

    When user clicks "Sign in with Cognito"
    Then user is on "Do you work for central government" page

  Scenario: LS - Fees under 20000 page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    Then user is on "Will the fees be under £20,000 per matter" page

  Scenario: LS - Select the legal services you need page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Will the fees be under £20,000 per matter" page
    Then user is on "Select the legal services you need" page

  Scenario: LS - Select the regions where you need legal services page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Will the fees be under £20,000 per matter" page
    When user is on "Select the legal services you need" page
    Then user is on "Select the regions where you need legal services" page

  Scenario: LS - Supplier results page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Will the fees be under £20,000 per matter" page
    When user is on "Select the legal services you need" page
    When user is on "Select the regions where you need legal services" page
    Then user is on "Supplier results 2" page

  Scenario: LS - Download the supplier list page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Will the fees be under £20,000 per matter" page
    When user is on "Select the legal services you need" page
    When user is on "Select the regions where you need legal services" page
    When user is on "Supplier results 2" page
    Then user is on "Download the supplier list" page

  Scenario: LS - Supplier page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Will the fees be under £20,000 per matter" page
    When user is on "Select the legal services you need" page
    When user is on "Select the regions where you need legal services" page
    When user is on "Supplier results 2" page
    Then user is on "Supplier 2" page

  Scenario: LS - Select the lot you need page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    Then user is on "Select the lot you need" page

  Scenario: LS - Select the legal services you need 2 page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Select the lot you need" page
    Then user is on "Select the legal services you need 2" page

  Scenario: LS - Select the jurisdiction you need page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Select the lot you need" page
    Then user is on "Select the jurisdiction you need" page