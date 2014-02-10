class Job < ActiveRecord::Base

  belongs_to :category

  def self.create_job(location, position, company, category)
    create!(location:location,
            position:position,
            company:company,
            category:category)
  end

end
