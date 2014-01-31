require 'jobs/list_grouped_by_categories'

describe Jobo::Jobs::ListGroupedByCategories, '.list' do
  let(:job_repository) { double(:job_repository) } 

  it 'returns all jobs grouped by categories' do 
    expect(job_repository).to receive(:all_grouped_by_categories)
    described_class.list(job_repository)
  end
end
