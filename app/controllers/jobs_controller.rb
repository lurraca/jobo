class JobsController < ApplicationController
  def latest_active
    @jobs = Jobo::Jobs::ListGroupedByCategories.list Job
  end
end
