# Read about factories at https://github.com/thoughtbot/factory_girl

require 'ffaker'

FactoryGirl.define do
  factory :job do
    location { Faker::AddressUS.state }
    position { Faker::Job.title }
    company { Faker::Company.name }
    category "MyString" #TODO: To be set up when categories are defined
  end
end
