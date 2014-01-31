require 'jobs/creator'

describe Jobo::Jobs::Creator, '.create_job'  do 
  let(:job_repository) { double :job_repository } 
  let(:job_attrs) { 
    {location:'Santo Domingo',
     position: 'Designer', 
     company: 'Claro', 
     category: 'Design'}
  }

  it 'creates a new job' do 
    expect(job_repository).to receive(:create_job).with(
      job_attrs[:location],
      job_attrs[:position],
      job_attrs[:company],
      job_attrs[:category])
    described_class.create_job job_repository, job_attrs
  end

end
