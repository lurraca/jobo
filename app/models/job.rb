class Job 

  def self.create_job(location, position, company, category)
    new.create!(location:location, 
                position:position, 
                company:company, 
                category:category)
  end

  def initialize
    @jobs = []
  end

  def create!(attributes)

  end

end
