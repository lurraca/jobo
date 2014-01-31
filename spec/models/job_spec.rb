require 'spec_helper'

describe Job do 

  describe '.all_grouped_by_categories' do 
    it 'returns all jobs grouped by categories' do 
      Job.create_job 'Santo Domingo', 'Designer', 'Mine', 'Design' 
      Job.create_job 'Santo Domingo', 'Designer', 'Mine', 'Programmer' 
      Job.create_job 'Santo Domingo', 'Designer', 'Mine', 'Design' 
      expect(Job.all_grouped_by_categories.size).to eql 2
    end
  end

end
