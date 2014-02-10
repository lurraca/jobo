# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    sequence(:name) { |n| Faker::HealthcareIpsum.word + n.to_s }
    parent_id nil
    factory :subcategory do
      parent_category { FactoryGirl.create(:category) }
    end

  end
end
