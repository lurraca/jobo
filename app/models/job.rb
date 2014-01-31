class Job < ActiveRecord::Base

  def self.create_job(location, position, company, category)
    create!(location:location, 
            position:position, 
            company:company, 
            category:category)
  end

  def self.all_grouped_by_categories
    all.grouped_by(&:category)
  end

end
