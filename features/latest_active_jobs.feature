Feature: Latest active jobs
  As a User 
  In order to see latest jobs created
  I want to see the location, position and company name for jobs sorted by category and publication date

  Scenario: List active jobs sorted by category and creation date
    Given the following jobs exists:
      |location     |position     |company              |category   |
      |Santo Domingo|Designer     |Tags and Brackets    |Design     |
      |Santiago     |Web Developer|Tags and Brackets    |Programming|
      |Bonao        |Web Developer|Pixel Perfect Tree   |Programming|
    When I visit the latest jobs url
    Then I should see the latest jobs grouped by categories
