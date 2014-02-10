require 'categories/creator'
require 'spec_helper'


describe Jobo::Categories::Creator, '.create_categories'  do
  let(:category_repository) { double :category_repository }
  let(:category_attrs) { {name: 'Programming', parent_id: nil } }

  it 'creates a new category' do
    expect(category_repository).to receive(:create_category).with(
      category_attrs[:name],
      category_attrs[:parent_id]
      )
    described_class.create_category category_repository, category_attrs
  end

end
