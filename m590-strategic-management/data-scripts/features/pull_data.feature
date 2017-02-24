Feature: Pull data from BSG

  Scenario: Pull data from BSG for processing
    Given I login to the BSG site
    And I open the Decisions/Reports window
    And I navigate to the Export data screen
    When I download FIR data for all years
    And I download CIR data
    And I download COR data
