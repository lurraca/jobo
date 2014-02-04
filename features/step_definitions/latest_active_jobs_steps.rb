Given(/^the following jobs exists:$/) do |jobs|
  jobs.hashes.each do |job|
    Jobo::Jobs::Creator.create_job Job, job.symbolize_keys
  end
end

When(/^I visit the latest jobs url$/) do
  visit latest_active_jobs_url
end

Then(/^I should see the latest jobs grouped by categories$/) do
  @grouped_jobs = Jobo::Jobs::ListGroupedByCategories.list Job
  @grouped_jobs.each do |category, jobs|
    within(".#{category}") do 
      jobs.each do |job| 
        page.should have_css(".location", text: job.location)
        page.should have_css(".position", text: job.position)
        page.should have_css(".company", text: job.company)
      end
    end
  end
end
