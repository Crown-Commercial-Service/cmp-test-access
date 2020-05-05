Feature:  FM - Accessibility - In Draft


# FM-1057
#  Scenario: FM - Detailed Search - In draft - Review and generate documents
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "Auto_20200320_11e21384-d632-423c-9d79-638c642b93afAuto_20200320_Contract_71401189-92de-4c62-8343-a51"
#    Then user is on the "Review and generate documents" page
#    When user clicks link "Review and generate documents"


#  Scenario: FM - Detailed Search - In draft - Review and generate documents
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "Auto_20200402_ef407d3a-3c1b-435b-b257-fe04da47bedbAuto_20200402_Contract_f9e47af4-ff28-46de-b419-19a"
#    Then user is on the "Review your contract" page


#  Scenario: FM - Detailed Search - In draft - Create final contract
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "Auto_20200402_a2a8bdc5-96b3-4eac-866d-8c1984aa5ec7Auto_20200402_Contract_cf58eea1-5fbd-464c-a7d2-6bc"
#    Then user is on the "Sending the contract" page


# FM-1060
#  Scenario: FM - Detailed Search - In draft - Create final contract
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "Auto_20200402_a2a8bdc5-96b3-4eac-866d-8c1984aa5ec7Auto_20200402_Contract_cf58eea1-5fbd-464c-a7d2-6bc"
#    Then user is on the "Sending the contract" page
#    When user clicks "continue_da"
#    Then user is on the "Your contract was sent" page


# FM-1061
#  Scenario: FM - Detailed Search - In draft - Choose Contract Value
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "test1"
#    Then user is on the "Contract value" page
#    When user clicks "Service(0)"
#    When user clicks "continue_from_change_contract_value"


# FM-1063
#  Scenario: FM - Find a Facilities Management Supplier
#
#    Given the user is on the "FM Home" page
#    When user is on "FM Start" page


# FM-1064
#  Scenario: FM - Detailed Search - Sent Offer - Awaiting Supplier Response - Contract Summary
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "Auto_20200403_2348aee3-7d5f-4e0f-a123-01521229767cAuto_20200403_Contract_23d623ad-63e2-4acb-9d32-426"
#    Then user is on "Contract summary" page


#  Scenario: FM - Detailed Search - Sent Offer - Supplier Declined
#
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page
#    When user clicks "0021"
#    Then user is on "Contract summary declined" page


  Scenario: FM - Detailed Search - Sent Offer - Supplier Declined - View next Supplier

    Given the user is on the "FM Home" page
    When user clicks "Start now"
    When user clicks "Sign in with Cognito"
    When user is on "Procurements" page
    Then user is on "Procurements dashboard" page
    When user clicks "0021"
    #Then user clicks "View next supplier's price"
    Then sleep "3000"


