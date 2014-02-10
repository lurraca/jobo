class Category < ActiveRecord::Base

  has_many :jobs
  has_many :subcategories, class_name: "Category", foreign_key: "parent_id"
  belongs_to :parent_category, class_name: "Category", foreign_key: "parent_id"

end
