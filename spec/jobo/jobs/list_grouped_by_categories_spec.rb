require 'jobs/list_grouped_by_categories'

describe Jobo::Jobs::ListGroupedByCategories, '.list' do
  let(:job_design) { double(:job_design, category:'Design') }
  let(:job_programming) { double(:job_programming, category:'Programming') }
  let(:jobs) { [job_design, job_programming] }
  let(:job_repository) { double(:job_repository, order:jobs) }  

  it 'returns all jobs grouped by categories' do 
    expect(
      described_class.list(job_repository)
    ).to eql({'Design' => [job_design],
              'Programming'=> [job_programming]})
    
  end
end
