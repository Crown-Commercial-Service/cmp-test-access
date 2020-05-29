Feature:  FM - Accessibility

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

# Timeout
#  Scenario: FM - Manage procurements page
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page

# Timeout
#  Scenario: FM - Manage buildings page
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page

## FM-1046
#  Scenario: FM - Manage buildings - Select Building - Detailed building summary
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page
#    And user clicks "Auto Test 1"

# Minor defect
#  Scenario: FM - Manage buildings - Add a building - Step 1
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page
#    And user clicks "Add a building"
#    And user clicks "Save and continue"

# obsolete
#  Scenario: FM - Manage buildings - Create Building - Continue
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page
#    And user clicks "Create Single Building"
#    And user is on "Create Single Building" page

# Minor
  Scenario: FM - Manage buildings - Add Building - Add address page
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Manage buildings" page
    And user clicks "Add a building"
    And user is on "Add building Add address" page

# FM-1047
  Scenario: FM - Manage buildings - Add Building - Page 2
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Manage buildings" page
    And user clicks "Add a building"
    And user is on "Add Building Page 2" page

# Defect FM-1050
  Scenario: FM - Manage buildings - Add Building - Page 3
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Manage buildings" page
    And user clicks "Add a building"
    And user is on "Add Building Page 2" page
    And user is on "Add Building Page 3" page

  Scenario: FM - Manage buildings - Add Building - Page 4
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Manage buildings" page
    And user clicks "Add a building"
    And user is on "Add Building Page 2" page
    And user is on "Add Building Page 3" page
    And user is on "Add Building Page 4" page

# Issue Timeout
#  Scenario: FM - Start a new procurement page - open all

  Scenario: FM - Start a new procurement page - Open Services - Maintenance
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    #Then user clicks "Open all"
    Then user clicks "C"
    Then user checks "C_all"

  Scenario: FM - Start a new procurement page - Open Services - Horticultural
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "D"
    Then user checks "D_all"

  Scenario: FM - Start a new procurement page - Open Services - Statutory Obligations
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "E"
    Then user checks "E_all"

  Scenario: FM - Start a new procurement page - Open Services - Catering Services
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "F"
    Then user checks "F_all"

  Scenario: FM - Start a new procurement page - Open Services - Cleaning Services
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "G"
    Then user checks "G_all"

  Scenario: FM - Start a new procurement page - Open Services - Workplace FM Services
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "H"
    Then user checks "H_all"

  Scenario: FM - Start a new procurement page - Open Services - Reception Services
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "I"
    Then user checks "I_all"

  Scenario: FM - Start a new procurement page - Open Services - Security Services
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "J"
    Then user checks "J_all"

  Scenario: FM - Start a new procurement page - Open Services - Waste Services
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "K"
    Then user checks "K_all"

  Scenario: FM - Start a new procurement page - Open Services - Miscellaneous FM Services
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "L"
    Then user checks "L_all"

  Scenario: FM - Start a new procurement page - Open Services - Computer-aided facilities management (CAFM)
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "M"
    Then user checks "service_M-1"

  Scenario: FM - Start a new procurement page - Open Services - Helpdesk Services
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "N"
    Then user checks "service_N-1"

  Scenario: FM - Start a new procurement page - Region 1
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKC"
    Then user checks "region_UKC1"

  Scenario: FM - Start a new procurement page - Region 2
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKD"
    Then user checks "region_UKD1"

  Scenario: FM - Start a new procurement page - Region 3
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKE"
    Then user checks "region_UKE1"

  Scenario: FM - Start a new procurement page - Region 4
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKF"
    Then user checks "region_UKF1"

  Scenario: FM - Start a new procurement page - Region 5
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKG"
    Then user checks "region_UKG1"

  Scenario: FM - Start a new procurement page - Region 6
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKH"
    Then user checks "region_UKH1"

  Scenario: FM - Start a new procurement page - Region 7
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKI"
    Then user checks "region_UKI_all"

  Scenario: FM - Start a new procurement page - Region 8
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKJ"
    Then user checks "region_UKJ_all"

  Scenario: FM - Start a new procurement page - Region 9
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKK"
    Then user checks "region_UKK_all"

  Scenario: FM - Start a new procurement page - Region 10
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKL"
    Then user checks "region_UKL_all"

  Scenario: FM - Start a new procurement page - Region 11
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKM"
    Then user checks "region_UKM_all"

  Scenario: FM - Start a new procurement page - Region 12
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    Then user clicks "C"
    Then user checks "C_all"
    Then user clicks "commit"
    Then user clicks "accordion-default-heading-UKN"
    Then user checks "region_UKN_all"

  Scenario: FM - Start a new procurement page - Search Result
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    And user clicks "C"
    And user checks "C_all"
    And user clicks "commit"
    And user clicks "accordion-default-heading-UKN"
    And user checks "region_UKN_all"
    Then user clicks "commit"

  Scenario: FM - Start a new procurement page - Search Result Saved
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    And user clicks "C"
    And user checks "C_all"
    And user clicks "commit"
    And user clicks "accordion-default-heading-UKN"
    And user checks "region_UKN_all"
    And user clicks "commit"
#    Then user enters "datetime" in "facilities_management_procurement_name"
    And user clicks "commit"

  Scenario: FM - Start a new procurement page - Detailed Search Summary
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    And user clicks "C"
    And user checks "C_all"
    And user clicks "commit"
    And user clicks "accordion-default-heading-UKN"
    And user checks "region_UKN_all"
    And user clicks "commit"
    Then user enters "datetime" in "facilities_management_procurement_name"
    And user clicks "commit"
    When user is on "datetime" page
    Then user clicks "start_detailed_search"
    And user clicks "continue_to_results"

  Scenario: FM - Start a new procurement page - Contract Name page
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    And user clicks "C"
    And user checks "C_all"
    And user clicks "commit"
    And user clicks "accordion-default-heading-UKN"
    And user checks "region_UKN_all"
    And user clicks "commit"
    Then user enters "datetime" in "facilities_management_procurement_name"
    And user clicks "commit"
    And user clicks "start_detailed_search"
    Then user is on "contract name" page
    And user clicks "next_step"

  Scenario: FM - Start a new procurement page - Estimated Annual Cost
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    And user clicks "C"
    And user checks "C_all"
    And user clicks "commit"
    And user clicks "accordion-default-heading-UKN"
    And user checks "region_UKN_all"
    And user clicks "commit"
    Then user enters "datetime" in "facilities_management_procurement_name"
    And user clicks "commit"
    And user clicks "start_detailed_search"
    Then user is on "estimated annual cost" page
    And user clicks "next_step"

  Scenario: FM - Start a new procurement page - TUPE
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    And user clicks "C"
    And user checks "C_all"
    And user clicks "commit"
    And user clicks "accordion-default-heading-UKN"
    And user checks "region_UKN_all"
    And user clicks "commit"
    Then user enters "datetime" in "facilities_management_procurement_name"
    And user clicks "commit"
    And user clicks "start_detailed_search"
    Then user is on "tupe" page
    And user clicks "next_step"

  Scenario: FM - Start a new procurement page - Contract Period
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Start a new procurement" page
    And user clicks "C"
    And user checks "C_all"
    And user clicks "commit"
    And user clicks "accordion-default-heading-UKN"
    And user checks "region_UKN_all"
    And user clicks "commit"
    Then user enters "datetime" in "facilities_management_procurement_name"
    And user clicks "commit"
    And user clicks "start_detailed_search"
    Then user is on "Contract period" page
    And user clicks "next_step"

  Scenario: FM - Buildings page
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Procurements dashboard" page
    And user clicks "accessibility1"
    And user clicks "Select buildings"
    And user clicks "next_step"

  Scenario: FM - Buildings page - More Buildings
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Procurements dashboard" page
    And user clicks "accessibility1"
    And user clicks "Select buildings"
    And user clicks "+ Add more buildings"

  Scenario: FM - Buildings page - More Buildings - Select Building
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Procurements dashboard" page
    And user clicks "accessibility1"
    And user clicks "Select buildings"
    And user clicks "+ Add more buildings"
    And user clicks "Auto Test 1"

  Scenario: FM - Detailed Search - Select Building
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Procurements dashboard" page
    And user clicks "accessibility1"
    And user clicks "Select buildings"

  Scenario: FM - Detailed Search - Select services
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Procurements dashboard" page
    And user clicks "accessibility"
    And user clicks "Select services"

  Scenario: FM - Detailed Search - Select services - Save and Continue
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Procurements dashboard" page
    And user clicks "accessibility"
    And user clicks "Select services"
#    And user clicks "next_step"

  Scenario: FM - Detailed Search - Service Information
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Procurements dashboard" page
    And user clicks "accessibility3"
    And user clicks "Auto Test 1"
#    And user clicks "next_step"

  Scenario: FM - Detailed Search - Results page
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Procurements dashboard" page
    And user clicks "accessibility4"
    And user is on "results" page

  Scenario: FM - Detailed Search - Results 2
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Procurements dashboard" page
    And user clicks "accessibility4"
    And user clicks "set_route_to_market"

    Scenario: FM - Contract Value
    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    When user is on "Procurements dashboard" page
    And user clicks "0100"
    And user is on "Contract value" page

