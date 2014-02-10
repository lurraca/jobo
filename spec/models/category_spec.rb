require 'spec_helper'

describe Category do

  let(:parent_1) { FactoryGirl.create(:category) }
  let(:parent_2) { FactoryGirl.create(:category) }
  let(:subcategory_1) { FactoryGirl.create(:subcategory, parent_category: parent_1) }
  let(:subcategory_2) { FactoryGirl.create(:subcategory, parent_category: parent_1) }
  let(:subcategory_3) { FactoryGirl.create(:category, parent_category: parent_2) }



  it "returns only the parents categories" do
    expect(Category.elders).to include(parent_1, parent_2)
    expect(Category.elders).not_to include(subcategory_1, subcategory_2, subcategory_3)
  end

  it "returns appropiate children for parents categories" do
    expect(parent_1.subcategories).to include(subcategory_1, subcategory_2)
    expect(parent_1.subcategories).not_to include(subcategory_3)
  end


end
