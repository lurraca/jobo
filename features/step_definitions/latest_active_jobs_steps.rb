Given(/^the following jobs exists:$/) do |jobs|
  jobs.hashes.each do |job|
    Jobo::Jobs::Creator.create_job Job, job.symbolize_keys
  end
end

When(/^I visit the latest jobs url$/) do
  visit latest_active_jobs_url
end

Then(/^I should see the latest jobs grouped by categories$/) do
  @jobs = Jobo::Jobs::ListGroupedByCategories.list Job
  @jobs.each do |job|
    within(".#{job.category}") do 
      page.should have_css(".location", text: 'Santo Domingo')
      page.should have_css(".position", text: 'Designer')
      page.should have_css(".company", text: 'Tags and Brackets')
    end
  end
end
