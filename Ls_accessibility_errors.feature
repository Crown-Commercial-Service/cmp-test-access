Feature:  LS - Accessibility - Errors


  Scenario: LS - Do you work for central government page - Sign in with Cognito
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    Then user is on "Do you work for central government" page
    #Then user clicks "Sign in"

# Accessibility Issue
  Scenario: LS - Fees under 20000 page - Do you work for central government page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    #Then user is on "Will the fees be under £20,000 per matter" page
    Then user clicks "submit"

# As above
  Scenario: LS - Select the legal services you need page - Fees under 20000 page - Duplicate Id issue CSI-82
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Will the fees be under £20,000 per matter" page
    #Then user is on "Select the legal services you need" page
    Then user clicks "submit"

  Scenario: LS - Select the regions where you need legal services page - Select the legal services you need page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Will the fees be under £20,000 per matter" page
    When user is on "Select the legal services you need" page
    #Then user is on "Select the regions where you need legal services" page
    #Then user clicks "commit2"

  Scenario: LS - Supplier results page - Select the regions where you need legal services page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Will the fees be under £20,000 per matter" page
    When user is on "Select the legal services you need" page
    When user is on "Select the regions where you need legal services" page
    Then user is on "Supplier results 2" page
    #Then user clicks "commit"

  Scenario: LS - Download the supplier list page - Supplier results page 2
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Will the fees be under £20,000 per matter" page
    When user is on "Select the legal services you need" page
    When user is on "Select the regions where you need legal services" page
    When user is on "Supplier results 2" page
    #Then user is on "Download the supplier list" page
    Then user clicks "Back to start"

  Scenario: LS - Supplier page - Download the supplier list page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Will the fees be under £20,000 per matter" page
    When user is on "Select the legal services you need" page
    When user is on "Select the regions where you need legal services" page
    When user is on "Supplier results 2" page
    Then user is on "Download the supplier list" page
    #Then user clicks "Back to start"

  Scenario: LS - Supplier page - Supplier 2
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Will the fees be under £20,000 per matter" page
    When user is on "Select the legal services you need" page
    When user is on "Select the regions where you need legal services" page
    When user is on "Supplier results 2" page
    Then user is on "Supplier 2" page
    #Then user clicks "commit2"

  Scenario: LS - Select the lot you need page - Error
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
    #Then user clicks "commit"

  Scenario: LS - Select the jurisdiction you need page
    Given the user is on the "LS Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Do you work for central government" page
    When user is on "Select the lot you need" page
    Then user is on "Select the jurisdiction you need" page
    Then user clicks "commit"
